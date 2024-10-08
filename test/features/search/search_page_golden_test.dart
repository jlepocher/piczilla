import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:piczilla/piczilla_app.dart';

import '../../../page_objects/home_page_object.dart';
import '../../../page_objects/search_page_object.dart';
import '../../helpers/full_tree_test_dependency_setup.dart';
import '../../helpers/golden_test_helpers.dart';

void main() {
  setUp(() async {
    // Allows for text to be shown on goldens
    await loadAppFonts();

    FullTreeTestDependencySetup.setUpDependenciesWithMocks();
  });

  Future<SearchPageObject> navigateToPage(WidgetTester tester) async {
    await HomePageObject(tester).clickSearchBar();
    return SearchPageObject(tester);
  }

  group('Search Page -', () {
    group('When the page is loaded', () {
      goldenTestSingleDevice(
        testDescription: 'the search history is shown.',
        screenshotFileName: 'search_page_search_history',
        createSut: () => const PicZillaApp(),
        onCreate: (_, tester) async {
          await tester.pumpAndSettle();
          await navigateToPage(tester);
        },
      );

      group('When a search history item is deleted,', () {
        goldenTestSingleDevice(
          testDescription: 'the other items remain.',
          screenshotFileName: 'search_page_search_history_one_deleted_item',
          createSut: () => const PicZillaApp(),
          onCreate: (_, tester) async {
            await tester.pumpAndSettle();
            final searchPageObject = await navigateToPage(tester);

            await searchPageObject.deleteSearchHistoryItemAtIndex(1);
          },
        );
      });

      group('When all items are deleted individually,', () {
        goldenTestSingleDevice(
          testDescription: 'the search history is hidden.',
          screenshotFileName: 'search_page_search_history_items_all_deleted_individually',
          createSut: () => const PicZillaApp(),
          onCreate: (_, tester) async {
            await tester.pumpAndSettle();
            final searchPageObject = await navigateToPage(tester);

            while (searchPageObject.canFindDeleteSearchHistoryItemButton()) {
              await searchPageObject.deleteSearchHistoryItemAtIndex(0);
            }
          },
        );
      });

      group('When the Clear history button is clicked,', () {
        goldenTestSingleDevice(
          testDescription: 'then the search history is cleared.',
          screenshotFileName: 'search_page_search_history_clear_clicked',
          createSut: () => const PicZillaApp(),
          onCreate: (_, tester) async {
            await tester.pumpAndSettle();
            final searchPageObject = await navigateToPage(tester);

            while (searchPageObject.canFindDeleteSearchHistoryItemButton()) {
              await searchPageObject.deleteSearchHistoryItemAtIndex(0);
            }
          },
        );
      });

      group('When a search returns some results,', () {
        goldenTestSingleDevice(
          testDescription: 'then the results are shown.',
          screenshotFileName: 'search_page_search_with_results',
          createSut: () => const PicZillaApp(),
          onCreate: (_, tester) async {
            await tester.pumpAndSettle();
            final searchPageObject = await navigateToPage(tester);

            await searchPageObject.enterSearchText(FullTreeTestDependencySetup.searchTextWithSearchResults);
            await searchPageObject.clickSearchButton();
          },
        );

        group('and the clear search text button is clicked', () {
          goldenTestSingleDevice(
            testDescription: 'then the results are hidden and the search history is shown.',
            screenshotFileName: 'search_page_search_with_results_clear_text_clicked',
            createSut: () => const PicZillaApp(),
            onCreate: (_, tester) async {
              await tester.pumpAndSettle();
              final searchPageObject = await navigateToPage(tester);

              await searchPageObject.enterSearchText(FullTreeTestDependencySetup.searchTextWithSearchResults);
              await searchPageObject.clickSearchButton();
              await searchPageObject.clickClearSearchBarTextButton();
            },
          );
        });
      });

      group('When a search returns some results,', () {
        goldenTestSingleDevice(
          testDescription: 'then the no results UI is shown.',
          screenshotFileName: 'search_page_search_no_results',
          createSut: () => const PicZillaApp(),
          onCreate: (_, tester) async {
            await tester.pumpAndSettle();
            final searchPageObject = await navigateToPage(tester);

            await searchPageObject.enterSearchText("squirrel");
            await searchPageObject.clickSearchButton();
          },
        );
      });
    });
  });
}
