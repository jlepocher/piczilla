import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:piczilla/features/images/domain/image_model.dart';

part 'favourite_image_data_model.freezed.dart';

@freezed
class FavouriteImageDataModel with _$FavouriteImageDataModel {
  const factory FavouriteImageDataModel({
    required int id,
    required String url,
  }) = _FavouriteImageDataModel;

  factory FavouriteImageDataModel.fromFavouriteImageModel(ImageModel model) {
    return FavouriteImageDataModel(
      id: model.id,
      url: model.url,
    );
  }
}

extension FavouriteImageDataModelListExtensions on List<FavouriteImageDataModel> {
  /// Converts a List<FavouriteImageDataModel> into a List<ImageModel>
  List<ImageModel> get toImageModelList => map((dataModel) => ImageModel.fromFavouriteImageDataModel(dataModel)).toList();
}
