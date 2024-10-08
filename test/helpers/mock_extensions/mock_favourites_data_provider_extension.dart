import 'package:mockito/mockito.dart';
import 'package:piczilla/features/favourites/data/favourite_image_data_model.dart';

import '../full_tree_test_dependency_setup.mocks.dart';

extension MockFavouritesDataProviderExtensions on MockFavouritesDataProvider {
  void mockFetchFavouriteImages(List<FavouriteImageDataModel> favourites) {
    when(fetchFavouriteImages()).thenAnswer((_) async => favourites);
  }

  void mockUpdateFavouriteImagesSuccess() {
    when(updateFavouriteImages(any)).thenAnswer((_) async {});
  }
}
