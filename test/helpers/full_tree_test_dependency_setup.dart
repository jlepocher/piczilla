import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:piczilla/common/data/paginated_data_model.dart';
import 'package:piczilla/common/di/service_locator.dart';
import 'package:piczilla/common/router/app_router.dart';
import 'package:piczilla/features/favourites/data/favourite_image_data_model.dart';
import 'package:piczilla/features/favourites/data/favourites_data_provider.dart';
import 'package:piczilla/features/images/data/image_data_model.dart';
import 'package:piczilla/features/images/data/image_data_provider.dart';
import 'package:piczilla/features/images/data/image_source_data_model.dart';
import 'package:piczilla/features/search/presentation/widgets/search_history/data/search_history_data_provider.dart';

import 'full_tree_test_dependency_setup.mocks.dart';
import 'mock_extensions/mock_favourites_data_provider_extension.dart';
import 'mock_extensions/mock_image_data_provider_extensions.dart';
import 'mock_extensions/mock_search_history_data_provider_extensions.dart';

@GenerateMocks([
  ImageDataProvider,
  SearchHistoryDataProvider,
  FavouritesDataProvider,
])
class FullTreeTestDependencySetup {
  // Create mock data
  static final imageModel1 = _generateImageDataModel(imageId: 1);
  static final imageModel2 = _generateImageDataModel(imageId: 2);
  static final imageModel3 = _generateImageDataModel(imageId: 3);
  static final imageModel4 = _generateImageDataModel(imageId: 4);
  static final imageModel5 = _generateImageDataModel(imageId: 5);
  static final imageModel6 = _generateImageDataModel(imageId: 6);
  static final imageModel7 = _generateImageDataModel(imageId: 7);

  static final testMostPopularImagesData = PaginatedDataModel(
    data: [
      imageModel1,
      imageModel2,
      imageModel3,
      imageModel4,
      imageModel5,
      imageModel6,
      imageModel7,
    ],
    nextPage: 2,
  );

  static final testSearchResultsData = PaginatedDataModel(
    data: [
      imageModel2,
      imageModel4,
      imageModel5,
      imageModel7,
    ],
    nextPage: 2,
  );

  static final testFavouriteImagesData = [
    const FavouriteImageDataModel(id: 1, url: "url/for/image/1"),
    const FavouriteImageDataModel(id: 4, url: "url/for/image/4"),
  ];

  static const searchTextWithSearchResults = "Hedgehog";

  // NOTE: This should allow for more flexibility, with functions that could be passed as optional parameters so that each test can
  //       set its own mock behaviours, depending on what scenario is being tested.
  static void setUpDependenciesWithMocks() {
    final getIt = GetIt.instance;

    // Create mocks
    final mockImageDataProvider = MockImageDataProvider();
    final mockSearchHistoryDataProvider = MockSearchHistoryDataProvider();
    final mockFavouritesDataProvider = MockFavouritesDataProvider();

    // Register dependencies as normal
    getIt.reset();
    registerDependencies();

    // Override some dependencies with mocks
    getIt
      ..unregister<GoRouter>()
      ..registerSingleton<GoRouter>(appRouter())
      ..unregister<ImageDataProvider>()
      ..registerSingleton<ImageDataProvider>(mockImageDataProvider)
      ..unregister<SearchHistoryDataProvider>()
      ..registerSingleton<SearchHistoryDataProvider>(mockSearchHistoryDataProvider)
      ..unregister<FavouritesDataProvider>()
      ..registerSingleton<FavouritesDataProvider>(mockFavouritesDataProvider);

    // Mock calls
    mockSearchHistoryDataProvider.mockFetchSearchHistory(['Sonic', 'the', searchTextWithSearchResults]);
    mockSearchHistoryDataProvider.mockUpdateSearchHistory();
    mockImageDataProvider.mockFetchMostPopularImages(testMostPopularImagesData);
    mockImageDataProvider.mockFetchImageDetails((imageId) => _generateImageDataModel(imageId: imageId));
    mockImageDataProvider
        .mockSearchImages((searchText) => searchText == searchTextWithSearchResults ? testSearchResultsData : PaginatedDataModel(data: [], nextPage: null));
    mockFavouritesDataProvider.mockFetchFavouriteImages(testFavouriteImagesData);
    when(mockFavouritesDataProvider.updateFavouriteImages(any)).thenAnswer((_) async => Future.value());
  }

  static ImageDataModel _generateImageDataModel({required int imageId}) {
    final imageUrl = "url/for/$imageId";

    return ImageDataModel(
      id: imageId,
      url: imageUrl,
      photographer: "Photographer for Image$imageId",
      photographerUrl: "Photographer URL for Image$imageId",
      src: ImageSourceModel(
        original: imageUrl,
        large2x: imageUrl,
        large: imageUrl,
        medium: imageUrl,
        small: imageUrl,
        portrait: imageUrl,
        landscape: imageUrl,
        tiny: imageUrl,
      ),
      alt: "Image$imageId description",
    );
  }
}
