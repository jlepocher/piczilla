import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:piczilla/common/router/app_route.dart';
import 'package:piczilla/features/home/state/home_page_cubit.dart';
import 'package:piczilla/features/home/state/home_page_state.dart';
import 'package:piczilla/features/images/presentation/widgets/image_grid.dart';
import 'package:piczilla/features/search/presentation/widgets/custom_search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: CustomSearchBar.fake(
          key: const Key('homeSearchBar'),
          onTap: () => context.push(AppRoute.search.path),
        ),
      ),
      body: BlocBuilder<HomePageCubit, HomePageState>(
        builder: (context, state) {
          return state.map(
            loading: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
            loadingFailed: (_) => Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text("Uh oh... Something went wrong..."),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    key: const Key("retryButton"),
                    onPressed: () => context.read<HomePageCubit>().initialise(),
                    child: const Text("Retry"),
                  ),
                ],
              ),
            ),
            loaded: (loadedState) => ImageGrid(
              key: const Key("mostPopularImagesGrid"),
              onReachedEndOfList: () => context.read<HomePageCubit>().onReachedScrollBottom(),
              images: loadedState.pageModel.images,
              restorationId: "popularImages",
            ),
          );
        },
      ),
    );
  }
}
