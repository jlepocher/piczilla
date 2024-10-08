import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:piczilla/common/router/app_route.dart';
import 'package:piczilla/common/router/scaffold_with_navbar.dart';
import 'package:piczilla/features/favourites/presentation/favourites_page.dart';
import 'package:piczilla/features/home/presentation/home_page.dart';
import 'package:piczilla/features/home/state/home_page_cubit.dart';
import 'package:piczilla/features/image_details/presentation/image_details_page.dart';
import 'package:piczilla/features/image_details/state/image_details_page_cubit.dart';
import 'package:piczilla/features/search/presentation/search_page.dart';
import 'package:piczilla/features/search/state/image_search_cubit.dart';

final _key = GlobalKey<NavigatorState>();

GoRouter appRouter() => GoRouter(
      navigatorKey: _key,
      initialLocation: AppRoute.home.path,
      routes: [
        _buildRoute(
          AppRoute.search,
          (context, _) {
            return BlocProvider(
              create: (context) => ImageSearchCubit()..onSearchTextEmpty(),
              child: const SearchPage(),
            );
          },
          disableTransition: true,
        ),
        GoRoute(
          path: '${AppRoute.imageDetails.path}/:imageId',
          builder: (context, state) {
            final imageId = state.pathParameters['imageId'];
            return BlocProvider(
              create: (context) => ImageDetailsPageCubit()..initialise(stringImageId: imageId),
              child: const ImageDetailsPage(),
            );
          },
        ),
        // Stateful navigation based on:
        // https://github.com/flutter/packages/blob/main/packages/go_router/example/lib/stateful_shell_route.dart
        StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) {
            return ScaffoldWithNavBar(navigationShell: navigationShell);
          },
          branches: [
            // Home
            StatefulShellBranch(
              routes: [
                _buildRoute(
                  AppRoute.home,
                  (_, __) => BlocProvider(
                    create: (_) => HomePageCubit()..initialise(),
                    child: const HomePage(),
                  ),
                ),
              ],
            ),
            // Favourites
            StatefulShellBranch(
              routes: [
                _buildRoute(AppRoute.favourites, (_, __) => const FavouritesPage()),
              ],
            ),
          ],
        ),
      ],
    );

GoRoute _buildRoute(
  AppRoute route,
  Widget Function(BuildContext, GoRouterState) pageBuilder, {
  bool disableTransition = false,
}) =>
    GoRoute(
      path: route.path,
      name: route.name,
      pageBuilder: (context, state) {
        if (disableTransition) {
          return CustomTransitionPage(
            child: pageBuilder(context, state),
            transitionsBuilder: (_, __, ___, child) {
              return child;
            },
          );
        } else {
          return MaterialPage(child: pageBuilder(context, state));
        }
      },
    );
