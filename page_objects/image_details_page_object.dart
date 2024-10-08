import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test/helpers/widget_tester_extensions.dart';
import 'base_page_object.dart';
import 'widgets/back_button_object_mixin.dart';

class ImageDetailsPageObject extends BasePageObject with BackButtonObject {
  ImageDetailsPageObject(super.tester);

  Future<void> clickFavouriteButton() async {
    final Finder favouriteButton = find.byKey(const Key('favouriteButton'));
    await tester.tapAndSettle(favouriteButton);
  }
}
