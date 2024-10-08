import 'package:get_it/get_it.dart';
import 'package:piczilla/common/data/paginated_data_model.dart';
import 'package:piczilla/features/favourites/data/favourite_image_data_model.dart';
import 'package:piczilla/features/favourites/data/favourites_data_provider.dart';
import 'package:piczilla/features/images/data/image_data_model.dart';
import 'package:piczilla/features/images/data/image_data_provider.dart';
import 'package:piczilla/features/images/domain/image_model.dart';

class ImageRepository {
  final _imageDataProvider = GetIt.I<ImageDataProvider>();
  final _favouriteImageDataProvider = GetIt.I<FavouritesDataProvider>();

  // Addding caching at this level and only relying on fetch/update-all operations at the data provider layer
  // means we can guarantee in-app caching for performance (regardless of what our data layer is) and ensure better business
  // logic coverage in tests (we only end up mocking something that is not actually clever at all -> the data provider layer).
  List<FavouriteImageDataModel> _cachedFavouriteImages = [];

  Future<PaginatedDataModel<List<ImageModel>>> fetchMostPopularImages({
    required int pageNumber,
  }) async {
    final paginatedData = await _imageDataProvider.fetchMostPopularImages(pageNumber: pageNumber);

    return PaginatedDataModel(
      data: paginatedData.data.map((dataModel) => ImageModel.fromImageDataModel(dataModel)).toList(),
      nextPage: paginatedData.nextPage,
    );
  }

  Future<ImageDataModel> fetchImageDetails({required int imageId}) async {
    final data = await _imageDataProvider.fetchImageDetails(imageId: imageId);
    return data;
  }

  Future<List<ImageModel>> fetchFavouriteImages() async {
    // If the cache is empty, fetch from the provider and cache the data
    if (_cachedFavouriteImages.isEmpty) {
      final favouritesData = await _favouriteImageDataProvider.fetchFavouriteImages();
      _cachedFavouriteImages = favouritesData;
    }
    return _cachedFavouriteImages.toImageModelList;
  }

  Future<List<ImageModel>> removeImageFromFavourites({required int imageId}) async {
    _cachedFavouriteImages.removeWhere((favourite) => favourite.id == imageId);

    await _favouriteImageDataProvider.updateFavouriteImages(_cachedFavouriteImages);

    return _cachedFavouriteImages.toImageModelList;
  }

  Future<List<ImageModel>> addImageToFavourite({required ImageModel image}) async {
    // Add to cache if it doesn't already exist
    if (!_cachedFavouriteImages.any((favourite) => favourite.id == image.id)) {
      _cachedFavouriteImages.add(FavouriteImageDataModel.fromFavouriteImageModel(image));
    }

    await _favouriteImageDataProvider.updateFavouriteImages(_cachedFavouriteImages);

    return _cachedFavouriteImages.toImageModelList;
  }
}
