import 'dart:core';

class AppEnvironment {
  static const production = 'production';
  static const development = 'development';

  static String _environment = development;

  static void setEnvironment(String env) {
    _environment = env;
  }

  static String get baseUrl {
    switch (_environment) {
      case production:
        return 'https://api.production.com';
      case development:
        return 'https://api.development.com';
      default:
        return 'https://api.development.com';
    }
  }

  static String get apiKey {
    switch (_environment) {
      case production:
        return 'your_prod_api_key';
      case development:
      default:
        return 'your_dev_api_key';
    }
  }
}
