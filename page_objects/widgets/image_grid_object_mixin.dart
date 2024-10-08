import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:piczilla/features/images/presentation/widgets/image_grid_tile.dart';

import '../../test/helpers/widget_tester_extensions.dart';
import '../base_page_object.dart';

mixin ImageGridObject on BasePageObject {
  Future<void> clickOnGridTile({required int index, required Key imageGridKey}) async {
    // Find the parent ImageGrid
    final Finder imageGridFinder = find.byKey(imageGridKey);

    // Find GridTiles within the ImageGrid
    final Finder gridTilesFinder = find.descendant(
      of: imageGridFinder,
      matching: find.byType(ImageGridTile),
    );

    await tester.tapAndSettle(gridTilesFinder.at(index));
  }
}
