import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:piczilla/features/image_details/state/image_details_page_state.dart';
import 'package:piczilla/features/images/domain/image_repository.dart';

class ImageDetailsPageCubit extends Cubit<ImageDetailsPageState> {
  ImageDetailsPageCubit() : super(const ImageDetailsPageState.loading());

  final _imageRepository = GetIt.I<ImageRepository>();

  void initialise({
    required String? stringImageId,
  }) async {
    // NOTE Major risk, that should be error handled
    int? imageId = int.tryParse(stringImageId ?? "");

    final imageDetails = await _imageRepository.fetchImageDetails(imageId: imageId!);

    emit(
      ImageDetailsPageState.loaded(
        imageId: imageDetails.id,
        imageUrl: imageDetails.src.large,
        photographer: imageDetails.photographer,
        description: imageDetails.alt,
      ),
    );
  }
}
