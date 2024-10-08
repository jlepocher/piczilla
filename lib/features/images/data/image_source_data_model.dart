import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_source_data_model.freezed.dart';
part 'image_source_data_model.g.dart';

@freezed
class ImageSourceModel with _$ImageSourceModel {
  // NOTE This could enventually be simplified when better responsiveness is in place in the app.
  const factory ImageSourceModel({
    required String original,
    required String large2x,
    required String large,
    required String medium,
    required String small,
    required String portrait,
    required String landscape,
    required String tiny,
  }) = _ImageSourceModel;

  factory ImageSourceModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ImageSourceModelFromJson(json);
}
