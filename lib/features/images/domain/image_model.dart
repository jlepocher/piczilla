import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:piczilla/features/favourites/data/favourite_image_data_model.dart';
import 'package:piczilla/features/images/data/image_data_model.dart';

part 'image_model.freezed.dart';

@freezed
class ImageModel with _$ImageModel {
  const factory ImageModel({
    required int id,
    required String url,
  }) = _ImageModel;

  factory ImageModel.fromImageDataModel(ImageDataModel imageDataModel) {
    return ImageModel(
      id: imageDataModel.id,
      url: imageDataModel.src.medium,
    );
  }

  factory ImageModel.fromFavouriteImageDataModel(FavouriteImageDataModel favouriteImageDataModel) {
    return ImageModel(
      id: favouriteImageDataModel.id,
      url: favouriteImageDataModel.url,
    );
  }
}
