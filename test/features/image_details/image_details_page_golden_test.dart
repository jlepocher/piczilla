import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:piczilla/piczilla_app.dart';

import '../../../page_objects/home_page_object.dart';
import '../../../page_objects/image_details_page_object.dart';
import '../../helpers/full_tree_test_dependency_setup.dart';
import '../../helpers/golden_test_helpers.dart';

void main() {
  setUp(() async {
    // Allows for text to be shown on goldens
    await loadAppFonts();

    FullTreeTestDependencySetup.setUpDependenciesWithMocks();
  });

  Future<ImageDetailsPageObject> navigateToPage(WidgetTester tester) async {
    await HomePageObject(tester).clickMostPopularImagesGrid(tileIndex: 2);
    return ImageDetailsPageObject(tester);
  }

  group('Image Details Page -', () {
    group('When the page is loaded', () {
      goldenTestSingleDevice(
        testDescription: 'the photo details are shown',
        screenshotFileName: 'image_details_page_details_are_shown',
        createSut: () => const PicZillaApp(),
        onCreate: (_, tester) async {
          await tester.pumpAndSettle();
          await navigateToPage(tester);
        },
      );

      group('and then Favourite button is clicked', () {
        goldenTestSingleDevice(
          testDescription: 'the the image shows as favourited',
          screenshotFileName: 'image_details_page_favourite_button_clicked',
          createSut: () => const PicZillaApp(),
          onCreate: (_, tester) async {
            await tester.pumpAndSettle();
            final pageObject = await navigateToPage(tester);

            await pageObject.clickFavouriteButton();
          },
        );

        group('twice', () {
          goldenTestSingleDevice(
            testDescription: 'then the image shows as not favourited',
            screenshotFileName: 'image_details__page_favourite_button_clicked_twice',
            createSut: () => const PicZillaApp(),
            onCreate: (_, tester) async {
              await tester.pumpAndSettle();
              final pageObject = await navigateToPage(tester);

              await pageObject.clickFavouriteButton();
              await pageObject.clickFavouriteButton();
            },
          );
        });
      });
    });
  });
}
