import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:piczilla/common/di/service_locator.dart';
import 'package:piczilla/piczilla_app.dart';

Future main() async {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      // Load config from .env file
      await dotenv.load();

      // Set up DI
      registerDependencies();

      runApp(
        const PicZillaApp(),
      );
    },
    (error, stack) async {
      // NOTE Error should be logged and handled (fire a crash report, show error page, etc.)
    },
  );
}
