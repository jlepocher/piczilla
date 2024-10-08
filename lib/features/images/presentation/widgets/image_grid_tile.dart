import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:piczilla/common/router/app_route.dart';
import 'package:piczilla/features/images/domain/image_model.dart';

class ImageGridTile extends StatelessWidget {
  const ImageGridTile({super.key, required this.image});

  final ImageModel image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push("${AppRoute.imageDetails.path}/${image.id}");
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: GridTile(
          child: Image.network(
            image.url,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
