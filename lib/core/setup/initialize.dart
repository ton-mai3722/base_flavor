import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../flavors.dart';
import 'app_config.dart';

class Initialize {
  final Flavor flavor;

  Initialize({required this.flavor});

  static Future<void> setupFlavor({required Flavor flavor}) async {
    try {
      await dotenv.load(fileName: '.env.${flavor.name}');
      final envFile = dotenv.env;

      AppConfig.create(
        appName: F.title,
        appId: envFile['APP_ID'] as String,
        baseUrl: envFile['BASE_URL'] as String,
        xApiKey: envFile['X-API-KEY'] as String,
        clarityId: envFile['CLARITY_ID'] as String,
        flavor: flavor,
        clientIdGoogleAndroid: envFile['CLIENT_GOOGLE_ANDROID'] as String,
        clientIdGoogleIOS: envFile['CLIENT_GOOGLE_IOS'] as String,
        clientIdGoogleServer: envFile['CLIENT_GOOGLE_SERVER'] as String,
        homePageTitle: envFile['HOME_PAGE_TITLE'] as String,
      );
    } catch (e) {
      throw Exception('Error loading .env file: $e');
    }
  }
}
