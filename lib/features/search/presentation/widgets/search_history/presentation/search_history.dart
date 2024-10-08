import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:piczilla/common/theme/custom_colors.dart';
import 'package:piczilla/common/widgets/nothing.dart';
import 'package:piczilla/features/search/state/image_search_cubit.dart';

class SearchHistory extends StatelessWidget {
  const SearchHistory({
    super.key,
    required this.searchHistory,
  });

  final List<String> searchHistory;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ImageSearchCubit>();

    // Search history not available yet
    if (searchHistory.isEmpty) return const Nothing();

    return _SearchHistoryContent(
      searchHistoryItems: searchHistory,
      onClearAllClicked: () => cubit.onClearHistoryClicked(),
      onDeleteItemClicked: (historyItem) => cubit.onDeleteHistoryItemClicked(historyItem),
      onItemClicked: (historyItem) => cubit.onHistoryItemClicked(historyItem),
    );
  }
}

class _SearchHistoryContent extends StatelessWidget {
  const _SearchHistoryContent({
    required this.searchHistoryItems,
    required this.onClearAllClicked,
    required this.onDeleteItemClicked,
    required this.onItemClicked,
  });

  final List<String> searchHistoryItems;
  final VoidCallback onClearAllClicked;
  final ValueChanged<String> onDeleteItemClicked;
  final ValueChanged<String> onItemClicked;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Your recent searches",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: CustomColors.grey,
                ),
              ),
              TextButton(
                key: const Key("clearSearchHistoryButton"),
                onPressed: onClearAllClicked,
                child: const Text(
                  "Clear",
                  style: TextStyle(
                    fontSize: 14,
                    color: CustomColors.grey,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.separated(
            itemCount: searchHistoryItems.length,
            separatorBuilder: (context, index) => const Divider(
              color: CustomColors.paleGrey,
            ),
            itemBuilder: (context, index) {
              final item = searchHistoryItems[index];
              return ListTile(
                minTileHeight: 32,
                title: Text(
                  item,
                  style: const TextStyle(color: CustomColors.darkGrey),
                ),
                trailing: IconButton(
                  key: const Key("deleteSearchHistoryItem"),
                  icon: const Icon(Icons.close, color: CustomColors.paleGrey),
                  onPressed: () => onDeleteItemClicked(item),
                ),
                onTap: () => onItemClicked(item),
              );
            },
          ),
        ),
      ],
    );
  }
}
