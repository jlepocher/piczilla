import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:piczilla/common/theme/custom_colors.dart';
import 'package:piczilla/common/widgets/nothing.dart';
import 'package:piczilla/features/favourites/state/favourite_images_cubit.dart';
import 'package:piczilla/features/favourites/state/favourite_images_state.dart';
import 'package:piczilla/features/images/domain/image_model.dart';

class FavouriteButton extends StatelessWidget {
  const FavouriteButton({
    super.key,
    required this.image,
  });

  final ImageModel image;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavouriteImagesCubit, FavouriteImagesState>(
      builder: (context, state) {
        if (state is FavouriteImagesStateWithData) {
          final isFavourite = (state as FavouriteImagesStateWithData).favourites.any((favourite) => favourite.id == image.id);

          return IconButton(
            icon: Icon(
              isFavourite ? Icons.favorite : Icons.favorite_outline,
              color: CustomColors.favouriteIcon,
            ),
            onPressed: () {
              final favouriteImagesCubit = context.read<FavouriteImagesCubit>();
              isFavourite ? favouriteImagesCubit.onRemoveFromFavouritesClicked(imageId: image.id) : favouriteImagesCubit.onAddToFavouritesClicked(image: image);
            },
          );
        }

        return const Nothing();
      },
    );
  }
}
