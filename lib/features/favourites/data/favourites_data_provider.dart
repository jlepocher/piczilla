import 'package:piczilla/features/favourites/data/favourite_image_data_model.dart';

abstract class FavouritesDataProvider {
  Future<List<FavouriteImageDataModel>> fetchFavouriteImages();

  Future<void> updateFavouriteImages(List<FavouriteImageDataModel> favourites);
}
