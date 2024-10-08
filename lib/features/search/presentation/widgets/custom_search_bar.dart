import 'package:flutter/material.dart';
import 'package:piczilla/common/theme/custom_colors.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar._({
    required this.isFocusable,
    this.onTap,
    this.onSearchTextSubmitted,
    this.onSearchTextCleared,
    this.initialText,
    super.key,
  });

  factory CustomSearchBar.fake({required VoidCallback onTap, Key? key}) {
    return CustomSearchBar._(
      isFocusable: false,
      onTap: onTap,
      key: key,
    );
  }

  factory CustomSearchBar.real({
    required void Function(String) onSearchTextSubmitted,
    required VoidCallback onSearchTextCleared,
    String? initialText,
    Key? key,
  }) {
    return CustomSearchBar._(
      isFocusable: true,
      onSearchTextSubmitted: onSearchTextSubmitted,
      onSearchTextCleared: onSearchTextCleared,
      initialText: initialText,
      key: key,
    );
  }

  final bool isFocusable;
  final VoidCallback? onTap;
  final Function(String)? onSearchTextSubmitted;
  final VoidCallback? onSearchTextCleared;
  final String? initialText;

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  late TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController(text: widget.initialText);
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "customSearchBarHeroTag",
      child: Material(
        color: Colors.transparent,
        child: GestureDetector(
          onTap: widget.isFocusable ? null : widget.onTap,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            height: AppBar().preferredSize.height,
            decoration: BoxDecoration(
              color: CustomColors.paleGrey,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(Icons.search, color: Colors.black54),
                const SizedBox(width: 8),
                Expanded(
                  child: widget.isFocusable
                      ? TextField(
                          controller: _textController,
                          autofocus: true,
                          textInputAction: TextInputAction.search,
                          onSubmitted: widget.onSearchTextSubmitted,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            suffixIcon: _textController.text.isNotEmpty
                                ? IconButton(
                                    key: const Key("clearSearchBarButton"),
                                    icon: const Icon(Icons.clear),
                                    onPressed: () {
                                      setState(() {
                                        _textController.clear();
                                        widget.onSearchTextCleared?.call();
                                      });
                                    },
                                  )
                                : null,
                          ),
                          onChanged: (searchText) {
                            // Hide icon button to clear search text if text is empty
                            setState(() {
                              if (searchText.isEmpty) {
                                widget.onSearchTextCleared?.call();
                              }
                            });
                          },
                        )
                      : const Text(
                          "Search",
                          style: TextStyle(color: CustomColors.darkGrey),
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
