abstract final class RoutesKeys {
  static const String splash = '/splash';
  static const String onBoarding = '/onBoarding';
  static const String login = '/login';
  static const String forgotPassword = '/forgotPassword';
  static const String verifyPassword = '/verifyPassword';
  static const String resetPassword = '/resetPassword';
  static const String register = '/register';
  static const String verifyAccount = '/verifyAccount';
  static const String layout = '/layout';
  static const String categories = '/categories';
  static const String notifications = '/notifications';
  static const String categoryProducts = '/categoryProducts';
  static const String closingSoonProducts = '/closingSoonProducts';
  static const String featuredProducts = '/featuredProducts';
  static const String premiumProducts = '/premiumProducts';
  static const String productDetails = '/productDetails';
  static const String search = '/search';
  static const String searchMessages = '/searchMessages';
  static const String chatDetails = '/chatDetails';
  static const String address = '/address';
  static const String addNewAddress = '/addNewAddress';
  static const String changePassword = '/changePassword';
  static const String settings = '/settings';
  static const String editProfile = '/editProfile';
  static const String contactUs = '/contactUs';
  static const String privacyPolicy = '/privacyPolicy';
  static const String termsOfService = '/termsOfService';
}

abstract final class Routes {
  // ================================== Start ==================================
  static const String splash = RoutesKeys.splash;
  static const String onBoarding = RoutesKeys.onBoarding;

  // ============================== Authentication =============================
  static const String login = RoutesKeys.login;
  static const String forgotPassword =
      '${RoutesKeys.login}${RoutesKeys.forgotPassword}';
  static const String verifyPassword =
      '${RoutesKeys.login}${RoutesKeys.forgotPassword}${RoutesKeys.verifyPassword}';
  static const String resetPassword =
      '${RoutesKeys.login}${RoutesKeys.resetPassword}';
  static const String register = RoutesKeys.register;
  static const String verifyAccount =
      '${RoutesKeys.register}${RoutesKeys.verifyAccount}';

  // ============================ Layout Application ===========================
  static const String layout = '/layout';

  // =================================== Home ==================================
  static const String categories = '/layout/categories';
  static const String notifications = '/layout/notifications';

  // ================================= Product =================================
  static const String categoryProducts = '/layout/categoryProducts';
  static const String closingSoonProducts = '/layout/closingSoonProducts';
  static const String featuredProducts = '/layout/featuredProducts';
  static const String premiumProducts = '/layout/premiumProducts';
  static const String productDetails = '/layout/productDetails';

  // ================================== Search =================================
  static const String search = '/layout/search';

  // ================================= Messages ================================
  static const String searchMessages = '/layout/searchMessages';
  static const String chatDetails = '/layout/chatDetails';

  // ================================= Profile =================================
  static const String address = '/layout/address';
  static const String addNewAddress = '/layout/addNewAddress';
  static const String changePassword = '/layout/changePassword';
  static const String settings = '/layout/settings';
  static const String editProfile = '/layout/editProfile';
  static const String contactUs = '/layout/settings/contactUs';
  static const String privacyPolicy = '/layout/settings/privacyPolicy';
  static const String termsOfService = '/layout/settings/termsOfService';
}
