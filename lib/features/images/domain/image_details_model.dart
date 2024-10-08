import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:piczilla/features/images/data/image_data_model.dart';

part 'image_details_model.freezed.dart';

@freezed
class ImageDetailsModel with _$ImageDetailsModel {
  const factory ImageDetailsModel({
    required int id,
    required String url,
    required String? photographer,
    required String? photographerUrl,
    required String? description,
    required String shareableUrl,
  }) = _ImageDetailsModel;

  factory ImageDetailsModel.fromImageDataModel(ImageDataModel imageDataModel) {
    return ImageDetailsModel(
      id: imageDataModel.id,
      url: imageDataModel.src.medium,
      photographer: imageDataModel.photographer,
      photographerUrl: imageDataModel.photographerUrl,
      description: imageDataModel.alt,
      shareableUrl: imageDataModel.url,
    );
  }
}
