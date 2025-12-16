import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../enum/locale.dart';

class SetSystem {
  static void setSystemIOverlay() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
  }

  static void setSystemOrientations() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  static Widget setSystemLocales(Widget child) {
    return EasyLocalization(
      startLocale: AppLocale.en,
      fallbackLocale: AppLocale.en,
      supportedLocales: [AppLocale.th, AppLocale.en],
      path: 'assets/langs',
      saveLocale: true,
      child: child,
    );
  }
}
