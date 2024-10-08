import 'package:mockito/mockito.dart';

import '../full_tree_test_dependency_setup.mocks.dart';

extension MockSearchHistoryDataProviderExtensions on MockSearchHistoryDataProvider {
  void mockFetchSearchHistory(List<String> searchHistory) {
    when(fetchSearchHistory()).thenAnswer((_) async => searchHistory);
  }

  void mockUpdateSearchHistory() {
    when(updateSearchHistory(any)).thenAnswer((_) async => Future.value());
  }

  void mockFetchSearchHistoryError(Exception exception) {
    when(fetchSearchHistory()).thenThrow(exception);
  }

  void mockUpdateSearchHistoryError(Exception exception) {
    when(updateSearchHistory(any)).thenThrow(exception);
  }
}
