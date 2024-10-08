import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_details_page_state.freezed.dart';

@freezed
class ImageDetailsPageState with _$ImageDetailsPageState {
  const factory ImageDetailsPageState.loading() = ImageDetailsPageLoading;

  const factory ImageDetailsPageState.loaded({
    required int imageId,
    required String imageUrl,
    required String? photographer,
    required String? description,
    required String shareableUrl,
  }) = ImageDetailsPageLoaded;
}
