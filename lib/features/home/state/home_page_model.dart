import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:piczilla/features/images/domain/image_model.dart';

part 'home_page_model.freezed.dart';

@freezed
class HomePageModel with _$HomePageModel {
  const factory HomePageModel({
    required List<ImageModel> images,
    required int? nextPageNumberToFetch,
  }) = _HomePageModel;

  factory HomePageModel.empty() => const HomePageModel(
        images: [],
        nextPageNumberToFetch: 1,
      );
}
