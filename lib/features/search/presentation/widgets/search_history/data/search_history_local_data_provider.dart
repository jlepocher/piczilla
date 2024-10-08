import 'package:piczilla/features/search/presentation/widgets/search_history/data/search_history_data_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SearchHistoryLocalDataProvider implements SearchHistoryDataProvider {
  static const String _searchHistoryKey = 'search_history';

  @override
  Future<List<String>> fetchSearchHistory() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(_searchHistoryKey) ?? [];
  }

  @override
  Future<void> updateSearchHistory(List<String> searchHistory) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(_searchHistoryKey, searchHistory);
  }
}
