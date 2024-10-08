import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:piczilla/features/images/data/image_data_provider.dart';
import 'package:piczilla/piczilla_app.dart';

import '../../../page_objects/home_page_object.dart';
import '../../helpers/full_tree_test_dependency_setup.dart';
import '../../helpers/full_tree_test_dependency_setup.mocks.dart';
import '../../helpers/golden_test_helpers.dart';
import '../../helpers/mock_extensions/mock_image_data_provider_extensions.dart';

// NOTE Test data should be better structured and tests should be written in such a way that they don't rely on how the data
//      is arranged/mocked in a different file.
void main() {
  setUp(() async {
    // Allows for text to be shown on goldens
    await loadAppFonts();

    FullTreeTestDependencySetup.setUpDependenciesWithMocks();
  });

  group('When the app is started,', () {
    group('the Home page is loaded', () {
      goldenTestSingleDevice(
        testDescription: 'the Home tab is shown',
        screenshotFileName: 'home_tab_shown',
        createSut: () => const PicZillaApp(),
        onCreate: (_, tester) async {
          await tester.pumpAndSettle();
        },
      );

      group('and an exception was thrown when fetching the most popular images', () {
        setUp(() async {
          final mockDataProvider = GetIt.I<ImageDataProvider>() as MockImageDataProvider;
          mockDataProvider.mockFetchMostPopularImagesError(Exception("This has gone terribly wrong... Don't show me to the user."));
        });

        goldenTestSingleDevice(
          testDescription: 'then an error is shown.',
          screenshotFileName: 'home_tab_error_fetching_most_popular_images',
          createSut: () => const PicZillaApp(),
          onCreate: (_, tester) async {
            await tester.pumpAndSettle();
          },
        );
        group('and the retry succeeds', () {
          goldenTestSingleDevice(
            testDescription: 'then the page shows the image grid.',
            screenshotFileName: 'home_tab_error_fetching_most_popular_images_retry_succeeds',
            createSut: () => const PicZillaApp(),
            onCreate: (_, tester) async {
              await tester.pumpAndSettle();

              // Mock again so that when the Retry button is clicked, the fetch now succeeds
              final mockDataProvider = GetIt.I<ImageDataProvider>() as MockImageDataProvider;
              mockDataProvider.mockFetchMostPopularImages(FullTreeTestDependencySetup.testMostPopularImagesData);

              await HomePageObject(tester).clickRetryButton();
            },
          );
        });
      });
    });
  });
}
