import 'package:flutter/material.dart';
import 'package:piczilla/features/images/domain/image_model.dart';
import 'package:piczilla/features/images/presentation/widgets/image_grid_tile.dart';

class ImageGrid extends StatefulWidget {
  const ImageGrid({
    super.key,
    this.onReachedEndOfList,
    required this.images,
    required this.restorationId,
  });

  static const imageCountPerGridRow = 3;
  static const _spacingAroundTiles = 6.0;

  final VoidCallback? onReachedEndOfList;
  final List<ImageModel> images;
  final String restorationId;

  @override
  State<ImageGrid> createState() => _ImageGridState();
}

class _ImageGridState extends State<ImageGrid> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent - 200) {
      widget.onReachedEndOfList?.call();
    }
  }

  @override
  Widget build(BuildContext context) {
    final images = widget.images;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 16,
      ),
      child: GridView.builder(
        controller: _scrollController,
        restorationId: widget.restorationId,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: ImageGrid.imageCountPerGridRow,
          crossAxisSpacing: ImageGrid._spacingAroundTiles,
          mainAxisSpacing: ImageGrid._spacingAroundTiles,
        ),
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) => ImageGridTile(image: images[index]),
      ),
    );
  }
}
