import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:piczilla/common/widgets/empty_state.dart';
import 'package:piczilla/features/favourites/state/favourite_images_cubit.dart';
import 'package:piczilla/features/favourites/state/favourite_images_state.dart';
import 'package:piczilla/features/images/presentation/widgets/image_grid.dart';
import 'package:piczilla/gen/assets.gen.dart';

class FavouritesPage extends StatelessWidget {
  const FavouritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourites"),
      ),
      body: BlocBuilder<FavouriteImagesCubit, FavouriteImagesState>(
        builder: (context, state) {
          // NOTE This could be extracted into extension mapping methods if used more often.
          if (state is FavouriteImagesStateWithData) {
            final images = (state as FavouriteImagesStateWithData).favourites;

            if (images.isEmpty) {
              return EmptyState(
                text: "Time to get browsing and to like some pics!",
                image: Assets.images.brokenHeart,
              );
            }

            return ImageGrid(
              key: const Key("favouriteImagesGrid"),
              images: images,
              restorationId: "favouriteImages",
            );
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
