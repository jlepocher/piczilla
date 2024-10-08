import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:piczilla/features/images/domain/image_model.dart';

part 'favourite_images_state.freezed.dart';

abstract class FavouriteImagesStateWithData {
  List<ImageModel> get favourites;
}

@freezed
class FavouriteImagesState with _$FavouriteImagesState {
  const factory FavouriteImagesState.loading() = FavouriteImagesLoading;

  @Implements<FavouriteImagesStateWithData>()
  const factory FavouriteImagesState.loaded({
    required List<ImageModel> favourites,
  }) = FavouriteImagesLoaded;

  @Implements<FavouriteImagesStateWithData>()
  const factory FavouriteImagesState.favouriteAdded({
    required List<ImageModel> favourites,
  }) = FavouriteImageFavouriteAdded;

  @Implements<FavouriteImagesStateWithData>()
  const factory FavouriteImagesState.favouriteRemoved({
    required List<ImageModel> favourites,
  }) = FavouriteImageFavouriteRemoved;
}
