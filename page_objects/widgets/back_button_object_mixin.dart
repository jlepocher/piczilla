import 'package:flutter_test/flutter_test.dart';

import '../../test/helpers/widget_tester_extensions.dart';
import '../base_page_object.dart';

mixin BackButtonObject on BasePageObject {
  Future<void> clickOnBackButton() async {
    final Finder backButton = find.byTooltip('Back');
    await tester.tapAndSettle(backButton);
  }
}
