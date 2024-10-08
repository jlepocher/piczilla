import 'package:get_it/get_it.dart';
import 'package:piczilla/common/data/paginated_data_model.dart';
import 'package:piczilla/features/images/data/image_data_provider.dart';
import 'package:piczilla/features/images/domain/image_model.dart';
import 'package:piczilla/features/search/presentation/widgets/search_history/data/search_history_data_provider.dart';

class ImageSearchRepository {
  static const _maxSearchHistoryItemsCount = 8;

  final _dataProvider = GetIt.I<SearchHistoryDataProvider>();
  final _imageDataProvider = GetIt.I<ImageDataProvider>();

  // Cached search history to avoid having to fetch it at each write call.
  List<String> _cachedSearchHistory = [];

  Future<PaginatedDataModel<List<ImageModel>>> searchImages({
    required String searchText,
    required int pageNumber,
  }) async {
    final paginatedData = await _imageDataProvider.searchImages(
      searchText: searchText,
      pageNumber: pageNumber,
    );

    return PaginatedDataModel(
      data: paginatedData.data.map((dataModel) => ImageModel.fromImageDataModel(dataModel)).toList(),
      nextPage: paginatedData.nextPage,
    );
  }

  Future<List<String>> fetchSearchHistory() async {
    if (_cachedSearchHistory.isEmpty) {
      final history = await _dataProvider.fetchSearchHistory();
      _cachedSearchHistory = history;
    }
    return _cachedSearchHistory;
  }

  Future<List<String>> addToSearchHistory(String searchText) async {
    // If the entry already exists, we remove it first so that we can then add it to the top of the list
    _cachedSearchHistory.remove(searchText);

    // Insert to the start of the list, to see most recent first
    _cachedSearchHistory.insert(0, searchText);

    // Limit the number of history items
    if (_cachedSearchHistory.length > _maxSearchHistoryItemsCount) {
      _cachedSearchHistory = _cachedSearchHistory.sublist(0, _maxSearchHistoryItemsCount);
    }

    await _dataProvider.updateSearchHistory(_cachedSearchHistory);

    return _cachedSearchHistory;
  }

  Future<List<String>> removeFromSearchHistory(String historyItem) async {
    _cachedSearchHistory.remove(historyItem);

    await _dataProvider.updateSearchHistory(_cachedSearchHistory);

    return _cachedSearchHistory;
  }

  Future<List<String>> clearSearchHistory() async {
    _cachedSearchHistory.clear();

    await _dataProvider.updateSearchHistory([]);

    return [];
  }
}
