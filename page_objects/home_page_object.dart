import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test/helpers/widget_tester_extensions.dart';
import 'base_page_object.dart';
import 'widgets/image_grid_object_mixin.dart';

class HomePageObject extends BasePageObject with ImageGridObject {
  HomePageObject(super.tester);

  Future<void> clickFavouritesTab() async {
    final Finder favouriteButton = find.text('Favourites');
    await tester.tapAndSettle(favouriteButton);
  }

  Future<void> clickRetryButton() async {
    final Finder favouriteButton = find.byKey(const Key('retryButton'));
    await tester.tapAndSettle(favouriteButton);
  }

  Future<void> clickSearchBar() async {
    final Finder searchBar = find.byKey(const Key('homeSearchBar'));
    await tester.tapAndSettle(searchBar);
  }

  Future<void> clickMostPopularImagesGrid({required int tileIndex}) async {
    await clickOnGridTile(
      index: tileIndex,
      imageGridKey: const Key("mostPopularImagesGrid"),
    );
  }
}
