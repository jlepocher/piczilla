import 'package:flutter_test/flutter_test.dart';

extension WidgetTesterExtensions on WidgetTester {
  Future<void> tapAndSettle(Finder finder) async {
    await tap(finder);
    await pumpAndSettle();
  }
}
