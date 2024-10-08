import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConfig {
  String? _pexelsApiKey;
  String? get pexelsApiKey {
    return _pexelsApiKey ??= dotenv.env["PEXELS_API_KEY"];
  }
}
