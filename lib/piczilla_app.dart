import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:piczilla/features/favourites/state/favourite_images_cubit.dart';
import 'package:piczilla/features/favourites/state/favourite_images_state.dart';

class PicZillaApp extends StatelessWidget {
  const PicZillaApp({super.key});

  static final GlobalKey<ScaffoldMessengerState> _scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context) {
    final router = GetIt.I<GoRouter>();

    return BlocProvider(
      create: (context) => FavouriteImagesCubit()..initialise(),
      child: BlocListener<FavouriteImagesCubit, FavouriteImagesState>(
        listener: (context, state) {
          if (state is FavouriteImageFavouriteAdded) {
            _showSnackBar("Added to favourites");
          } else if (state is FavouriteImageFavouriteRemoved) {
            _showSnackBar("Removed from favourites");
          }
        },
        child: MaterialApp.router(
          theme: ThemeData.light(),
          scaffoldMessengerKey: _scaffoldMessengerKey,
          title: "PicZilla",
          debugShowCheckedModeBanner: false,
          routeInformationParser: router.routeInformationParser,
          routerDelegate: router.routerDelegate,
          routeInformationProvider: router.routeInformationProvider,
        ),
      ),
    );
  }

  void _showSnackBar(String message) {
    final scaffolMessengerState = _scaffoldMessengerKey.currentState;

    scaffolMessengerState?.removeCurrentSnackBar();

    scaffolMessengerState?.showSnackBar(
      SnackBar(
        duration: Durations.long2,
        content: Text(message),
      ),
    );
  }
}
