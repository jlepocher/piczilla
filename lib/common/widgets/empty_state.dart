import 'package:flutter/material.dart';
import 'package:piczilla/gen/assets.gen.dart';

/// UI reprenting an empty state (e.g. no images found for a search query), with an image and a text
class EmptyState extends StatelessWidget {
  const EmptyState({
    super.key,
    required this.text,
    required this.image,
  });

  final String text;
  final AssetGenImage image;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox.square(
            dimension: MediaQuery.of(context).size.shortestSide / 1.5,
            child: image.image(),
          ),
          const SizedBox(height: 32),
          Text(
            text,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
