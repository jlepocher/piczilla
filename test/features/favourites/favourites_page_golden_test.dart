import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:piczilla/features/favourites/data/favourites_data_provider.dart';
import 'package:piczilla/piczilla_app.dart';

import '../../../page_objects/favourites_page_object.dart';
import '../../../page_objects/home_page_object.dart';
import '../../../page_objects/image_details_page_object.dart';
import '../../helpers/full_tree_test_dependency_setup.dart';
import '../../helpers/full_tree_test_dependency_setup.mocks.dart';
import '../../helpers/golden_test_helpers.dart';
import '../../helpers/mock_extensions/mock_favourites_data_provider_extension.dart';

void main() {
  setUp(() async {
    // Allows for text to be shown on goldens
    await loadAppFonts();

    FullTreeTestDependencySetup.setUpDependenciesWithMocks();
  });

  Future<FavouritesPageObject> navigateToPage(WidgetTester tester) async {
    await HomePageObject(tester).clickFavouritesTab();
    return FavouritesPageObject(tester);
  }

  group('Favourites Page - ', () {
    group('When the page is opened', () {
      goldenTestSingleDevice(
        testDescription: 'the favourites are shown',
        screenshotFileName: 'favourites_tab_shown',
        createSut: () => const PicZillaApp(),
        onCreate: (_, tester) async {
          await tester.pumpAndSettle();
          await navigateToPage(tester);
        },
      );

      group('and an image is clicked and the image gets unfavourited and the back button is clicked,', () {
        goldenTestSingleDevice(
          testDescription: 'then the image has gone from the Favourites tab',
          screenshotFileName: 'favourites_tab_image_unfavourited',
          createSut: () => const PicZillaApp(),
          onCreate: (_, tester) async {
            await tester.pumpAndSettle();
            final favouritesPageObject = await navigateToPage(tester);

            await favouritesPageObject.clickFavouritesImagesGridTile(tileIndex: 0);

            final imageDetailsPageObject = ImageDetailsPageObject(tester);
            await imageDetailsPageObject.clickFavouriteButton();
            await imageDetailsPageObject.clickOnBackButton();
          },
        );
      });

      group('and an empty list is fetched,', () {
        setUp(() {
          final mockDataProvider = GetIt.I<FavouritesDataProvider>() as MockFavouritesDataProvider;
          mockDataProvider.mockFetchFavouriteImages([]);
        });

        goldenTestSingleDevice(
          testDescription: 'then the empty state UI is shown',
          screenshotFileName: 'favourites_tab_no_favourites',
          createSut: () => const PicZillaApp(),
          onCreate: (_, tester) async {
            await tester.pumpAndSettle();
            await navigateToPage(tester);
          },
        );
      });
    });
  });
}
