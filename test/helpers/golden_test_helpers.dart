import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:network_image_mock/network_image_mock.dart';

import 'golden_test_devices.dart';

/// Run golden test on a single device.
void goldenTestSingleDevice({
  required String testDescription,
  required Widget Function() createSut,
  required String screenshotFileName,
  Device device = GoldenTestDevices.iosPhone,
  Future<void> Function(Key, WidgetTester)? onCreate,
}) {
  final deviceName = device.name.toLowerCase();
  testGoldens("$testDescription - $deviceName", (tester) async {
    // Arrange
    final builder = DeviceBuilder()
      ..overrideDevicesForAllScenarios(devices: [device])
      ..addScenario(
        widget: createSut(),
        onCreate: (key) async {
          await onCreate?.call(key, tester);
        },
      );

    // Act
    // This replaces Image.network() images by mocks.
    await mockNetworkImagesFor(() async => await tester.pumpDeviceBuilder(builder));

    // Assert
    await screenMatchesGolden(tester, "${screenshotFileName}_$deviceName");
  });
}
