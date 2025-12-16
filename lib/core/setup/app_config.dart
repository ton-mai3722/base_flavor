import '../../flavors.dart';

class AppConfig {
  String appName = "";
  String baseUrl = "";
  String xApiKey = "";
  String appId = "";
  String clarityId = "";
  Flavor flavor = Flavor.sit;
  String clientIdGoogleAndroid = "";
  String clientIdGoogleIOS = "";
  String clientIdGoogleServer = "";
  String homePageTitle = "";

  static AppConfig shared = AppConfig.create();

  AppConfig({
    required this.appName,
    required this.baseUrl,
    required this.xApiKey,
    required this.appId,
    required this.clarityId,
    required this.flavor,
    required this.clientIdGoogleAndroid,
    required this.clientIdGoogleIOS,
    required this.clientIdGoogleServer,
    this.homePageTitle = "",
  });

  factory AppConfig.create({
    String appName = "",
    String baseUrl = "",
    String xApiKey = "",
    String appId = "",
    String clarityId = "",
    Flavor flavor = Flavor.sit,
    String clientIdGoogleAndroid = "",
    String clientIdGoogleIOS = "",
    String clientIdGoogleServer = "",
    String homePageTitle = "",
  }) {
    return shared = AppConfig(
      appName: appName,
      baseUrl: baseUrl,
      xApiKey: xApiKey,
      appId: appId,
      clarityId: clarityId,
      flavor: flavor,
      clientIdGoogleAndroid: clientIdGoogleAndroid,
      clientIdGoogleIOS: clientIdGoogleIOS,
      clientIdGoogleServer: clientIdGoogleServer,
      homePageTitle: homePageTitle,
    );
  }
}
