import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:piczilla/common/widgets/empty_state.dart';
import 'package:piczilla/features/images/presentation/widgets/image_grid.dart';
import 'package:piczilla/features/search/presentation/widgets/custom_search_bar.dart';
import 'package:piczilla/features/search/presentation/widgets/search_history/presentation/search_history.dart';
import 'package:piczilla/features/search/state/image_search_cubit.dart';
import 'package:piczilla/features/search/state/image_search_state.dart';
import 'package:piczilla/gen/assets.gen.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ImageSearchCubit>();

    return BlocBuilder<ImageSearchCubit, ImageSearchState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            forceMaterialTransparency: true,
            title: CustomSearchBar.real(
              key: ValueKey(state.searchText),
              initialText: state.searchText,
              onSearchTextSubmitted: (searchText) {
                cubit.onSearchTextSubmitted(searchText);
              },
              onSearchTextCleared: () {
                cubit.onSearchTextEmpty();
              },
            ),
          ),
          body: state.map(
            ready: (state) => SearchHistory(
              searchHistory: state.searchHistory,
            ),
            searching: (_) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            resultsFound: (state) => ImageGrid(
              onReachedEndOfList: () => cubit.onReachedScrollBottom(),
              images: state.results,
              restorationId: "searchResults",
            ),
            noResultsFound: (state) => EmptyState(
              text: "Nothing to see here...\n\nNo match for '${state.searchText}'.",
              image: Assets.images.shrug,
            ),
          ),
        );
      },
    );
  }
}
