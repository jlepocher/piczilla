import 'package:piczilla/features/favourites/data/favourite_image_data_model.dart';
import 'package:piczilla/features/favourites/data/favourites_data_provider.dart';

// NOTE This is use in-memory caching but in a real world app this should be talking to an API, or at least storing data locally.
class FavouritesInMemoryDataProvider implements FavouritesDataProvider {
  final Set<FavouriteImageDataModel> _inMemoryFavouriteImages = {};

  @override
  Future<List<FavouriteImageDataModel>> fetchFavouriteImages() async {
    return _inMemoryFavouriteImages.toList();
  }

  @override
  Future<void> updateFavouriteImages(List<FavouriteImageDataModel> favourites) async {
    _inMemoryFavouriteImages
      ..clear()
      ..addAll(favourites);
  }
}
