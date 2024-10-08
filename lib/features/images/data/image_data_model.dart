import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:piczilla/features/images/data/image_source_data_model.dart';

part 'image_data_model.freezed.dart';
part 'image_data_model.g.dart';

@freezed
class ImageDataModel with _$ImageDataModel {
  const factory ImageDataModel({
    required int id,
    required String url,
    required String? photographer,
    required String? photographerUrl,
    required ImageSourceModel src,
    required String? alt,
  }) = _ImageDataModel;

  factory ImageDataModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ImageDataModelFromJson(json);
}
