import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:piczilla/features/favourites/state/favourite_images_state.dart';
import 'package:piczilla/features/images/domain/image_model.dart';
import 'package:piczilla/features/images/domain/image_repository.dart';

class FavouriteImagesCubit extends Cubit<FavouriteImagesState> {
  FavouriteImagesCubit() : super(const FavouriteImagesState.loading());

  final _imageRepository = GetIt.I<ImageRepository>();

  void initialise() async {
    final favourites = await _imageRepository.fetchFavouriteImages();
    emit(FavouriteImagesState.loaded(favourites: favourites));
  }

  void onAddToFavouritesClicked({required ImageModel image}) async {
    final favourites = await _imageRepository.addImageToFavourite(image: image);
    emit(FavouriteImagesState.favouriteAdded(favourites: favourites));
  }

  void onRemoveFromFavouritesClicked({required int imageId}) async {
    final favourites = await _imageRepository.removeImageFromFavourites(imageId: imageId);
    emit(FavouriteImagesState.favouriteRemoved(favourites: favourites));
  }
}
