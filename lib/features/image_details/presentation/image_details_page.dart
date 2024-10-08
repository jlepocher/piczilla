import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:piczilla/features/favourites/presentation/favourite_button.dart';
import 'package:piczilla/features/image_details/state/image_details_page_cubit.dart';
import 'package:piczilla/features/image_details/state/image_details_page_state.dart';
import 'package:piczilla/features/images/domain/image_model.dart';
import 'package:share_plus/share_plus.dart';

class ImageDetailsPage extends StatelessWidget {
  const ImageDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImageDetailsPageCubit, ImageDetailsPageState>(
      builder: (context, state) {
        return state.map(
          loading: (_) => Scaffold(
            appBar: AppBar(),
            body: const Center(
              child: CircularProgressIndicator(),
            ),
          ),
          loaded: (loadedState) {
            return Scaffold(
              appBar: AppBar(
                title: const Text("Image"),
                actions: [
                  FavouriteButton(
                    key: const Key("favouriteButton"),
                    image: ImageModel(
                      id: loadedState.imageId,
                      url: loadedState.imageUrl,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.share),
                    onPressed: () {
                      // NOTE This was a last minute addition, and could be improved to
                      //      download the image locally, share it, and delete the temp image from the disk.
                      Share.share(
                        loadedState.shareableUrl,
                        subject: 'Check out this image!',
                      );
                    },
                  ),
                ],
              ),
              body: BlocBuilder<ImageDetailsPageCubit, ImageDetailsPageState>(
                builder: (context, state) {
                  return state.map(
                    loading: (_) => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    loaded: (loadedState) {
                      return Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Image.network(
                                      loadedState.imageUrl,
                                      fit: BoxFit.contain,
                                      width: double.infinity,
                                    ),
                                  ),
                                  const SizedBox(height: 16.0),
                                  if (loadedState.photographer != null) ...[
                                    Text(
                                      'Photographer: ${loadedState.photographer}',
                                      style: Theme.of(context).textTheme.titleMedium,
                                    ),
                                  ],
                                  if (loadedState.description != null) ...[
                                    const SizedBox(height: 8.0),
                                    Text(
                                      loadedState.description!,
                                      style: Theme.of(context).textTheme.bodyMedium,
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                  const SizedBox(height: 40.0),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            );
          },
        );
      },
    );
  }
}
