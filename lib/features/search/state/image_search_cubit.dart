import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:piczilla/common/async/debounce_mixin.dart';
import 'package:piczilla/features/images/domain/image_model.dart';
import 'package:piczilla/features/search/domain/image_search_repository.dart';
import 'package:piczilla/features/search/state/image_search_state.dart';

class ImageSearchCubit extends Cubit<ImageSearchState> with Debounce {
  ImageSearchCubit() : super(const ImageSearchState.ready(searchHistory: []));

  final _imageSearchRepository = GetIt.I<ImageSearchRepository>();
  int? _nextPageNumberToFetch = 1;
  bool _fetchingMoreData = false;
  final List<ImageModel> _searchResults = [];

  void onSearchTextEmpty() async {
    final searchHistory = await _imageSearchRepository.fetchSearchHistory();
    emitReadyStateWithSearchHistory(searchHistory);
  }

  void onSearchTextSubmitted(String searchText) async {
    await _triggerSearch(searchText);
  }

  void onHistoryItemClicked(String historyItem) async {
    await _triggerSearch(historyItem);
  }

  void onDeleteHistoryItemClicked(String historyItem) async {
    final searchHistory = await _imageSearchRepository.removeFromSearchHistory(historyItem);
    emitReadyStateWithSearchHistory(searchHistory);
  }

  void onClearHistoryClicked() async {
    final searchHistory = await _imageSearchRepository.clearSearchHistory();
    emitReadyStateWithSearchHistory(searchHistory);
  }

  void onReachedScrollBottom() async {
    // Don't do anything if we are already fetching some data
    if (_fetchingMoreData) return;

    // Debounce fetch call to guarantee we only ever make one call at a time
    debounce(() async {
      if (!_fetchingMoreData) {
        _fetchingMoreData = true;
        await _triggerSearch(state.searchText, newSearch: false);
        _fetchingMoreData = false;
      }
    });
  }

  void emitReadyStateWithSearchHistory(List<String> searchHistory) {
    // Creating a new list is important, so that each list has a new reference and a lists in a previoulsy emmitted state
    // doesn't get updated remotely, which could cause the UI listening to the state not to refresh (both the previous and new states
    // would end up being equal)
    emit(ImageSearchState.ready(searchHistory: [...searchHistory]));
  }

  Future<void> _triggerSearch(
    String searchText, {
    /// Whether we are triggering a new search. If [false], a new page for the current search will be fetched.
    bool newSearch = true,
  }) async {
    // If starting a new search, start at page 1 and clear any existing list of results.
    if (newSearch) {
      _nextPageNumberToFetch = 1;
      _searchResults.clear();
    }

    // Only trigger the fetch if a 'next page' can be fetched
    if (_nextPageNumberToFetch != null) {
      if (newSearch) emit(ImageSearchState.searching(searchText: searchText));

      final searchResponse = await _imageSearchRepository.searchImages(
        searchText: searchText,
        pageNumber: _nextPageNumberToFetch!,
      );

      _nextPageNumberToFetch = searchResponse.nextPage;

      if (searchResponse.data.isNotEmpty) {
        _searchResults.addAll(searchResponse.data);
        emit(ImageSearchState.resultsFound(
          searchText: searchText,
          results: [..._searchResults],
        ));
      } else {
        emit(ImageSearchState.noResultsFound(searchText: searchText));
      }

      // Only record the search term if we were fetching the first page of a new search
      if (newSearch) await _imageSearchRepository.addToSearchHistory(searchText);
    }
  }

  @override
  Future<void> close() {
    disposeDebounce();
    return super.close();
  }
}
