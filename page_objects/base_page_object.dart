import 'package:flutter_test/flutter_test.dart';

/// Base class for all page objects
abstract class BasePageObject {
  const BasePageObject(this.tester);

  final WidgetTester tester;
}
