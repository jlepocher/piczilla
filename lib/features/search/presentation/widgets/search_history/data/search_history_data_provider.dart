abstract class SearchHistoryDataProvider {
  /// Fetches the current search history
  Future<List<String>> fetchSearchHistory();

  /// Updates the search history with a new list of items.
  Future<void> updateSearchHistory(List<String> updatedHistory);
}
