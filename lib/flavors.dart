enum Flavor { sit, uat, prod }

class F {
  static late final Flavor appFlavor;

  static String get name => appFlavor.name;

  static String get title {
    switch (appFlavor) {
      case Flavor.sit:
        return 'Apple App SIT';
      case Flavor.uat:
        return 'Banana App UAT';
      case Flavor.prod:
        return 'Production App PRODUCTION';
    }
  }
}
