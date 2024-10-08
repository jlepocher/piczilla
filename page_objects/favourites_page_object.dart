import 'package:flutter/cupertino.dart';

import 'base_page_object.dart';
import 'widgets/back_button_object_mixin.dart';
import 'widgets/image_grid_object_mixin.dart';

class FavouritesPageObject extends BasePageObject with BackButtonObject, ImageGridObject {
  FavouritesPageObject(super.tester);

  Future<void> clickFavouritesImagesGridTile({required int tileIndex}) async {
    await clickOnGridTile(
      index: tileIndex,
      imageGridKey: const Key("favouriteImagesGrid"),
    );
  }
}
