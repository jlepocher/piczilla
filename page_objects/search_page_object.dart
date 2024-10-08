import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test/helpers/widget_tester_extensions.dart';
import 'base_page_object.dart';
import 'widgets/back_button_object_mixin.dart';
import 'widgets/image_grid_object_mixin.dart';

class SearchPageObject extends BasePageObject with BackButtonObject, ImageGridObject {
  SearchPageObject(super.tester);

  final Finder _deleteButtonsFinder = find.byKey(const Key('deleteSearchHistoryItem'));
  final Finder _searchBarFinder = find.byType(TextField);
  final Finder _clearIconFinder = find.byKey(const Key('clearSearchBarButton'));
  final Finder _searchBarContainerFinder = find.byKey(const Key('homeSearchBar'));

  Future<void> enterSearchText(String text) async {
    await tester.enterText(_searchBarFinder, text);
    await tester.pumpAndSettle();
  }

  Future<void> clickSearchButton() async {
    await tester.testTextInput.receiveAction(TextInputAction.search);
    await tester.pumpAndSettle();
  }

  Future<void> clickClearSearchBarTextButton() async {
    await tester.tapAndSettle(_clearIconFinder);
  }

  Future<void> tapSearchBar() async {
    await tester.tapAndSettle(_searchBarContainerFinder);
  }

  Future<void> deleteSearchHistoryItemAtIndex(int index) async {
    await tester.tapAndSettle(_deleteButtonsFinder.at(index));
  }

  /// Will return true if there is still at least one search history item on the page.
  bool canFindDeleteSearchHistoryItemButton() {
    return _deleteButtonsFinder.evaluate().isNotEmpty;
  }

  Future<void> clickClearSearchHistory() async {
    final Finder clearButtonFinder = find.byKey(const Key('clearSearchHistoryButton'));
    await tester.tapAndSettle(clearButtonFinder);
  }
}
