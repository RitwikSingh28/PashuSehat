/// Route names used throughout the app
class RouteNames {
  // Core routes
  static const String splash = '/';
  static const String onboarding = '/onboarding';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String verifyOtp = '/verify-otp';
  static const String forgotPassword = '/forgot-password';

  // Main app routes
  static const String dashboard = '/dashboard';
  static const String alerts = '/alerts';
  static const String alertDetails = '/alerts/:id';
  static const String cattleList = '/cattle';
  static const String cattleDetails = '/cattle/:id';
  static const String addCattle = '/cattle/add';
  static const String addNote = '/cattle/:id/add-note';
  static const String addCollarTag = '/collar-tag/add';
  static const String profile = '/profile';
  static const String contactUs = '/contact';

  // Helper methods
  static String getCattleDetailsPath(String id) => '/cattle/$id';
  static String getAlertDetailsPath(String id) => '/alerts/$id';
  static String getAddNotePath(String id) => '/cattle/$id/add-note';
}
