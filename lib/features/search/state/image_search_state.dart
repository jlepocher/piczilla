import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:piczilla/features/images/domain/image_model.dart';

part 'image_search_state.freezed.dart';

@freezed
class ImageSearchState with _$ImageSearchState {
  const factory ImageSearchState.ready({
    @Default("") String searchText,
    required List<String> searchHistory,
  }) = ImageSearchReady;

  const factory ImageSearchState.searching({
    required String searchText,
  }) = ImageSearchSearching;

  const factory ImageSearchState.resultsFound({
    required String searchText,
    required List<ImageModel> results,
  }) = ImageSearchResultsFound;

  const factory ImageSearchState.noResultsFound({required String searchText}) = ImageSearchNoResultsFound;
}
