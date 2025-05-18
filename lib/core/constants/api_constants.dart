class ApiConstants {
  static const String baseUrl = 'http://192.168.0.11:3000/api';

  // Auth endpoints
  static const String register = '/auth/signup';
  static const String loginWithPassword = '/auth/login/password';
  static const String phoneVerify = '/auth/verify';
  static const String refresh = '/auth/refresh';
  static const String logout = '/auth/logout';
  static const String otpRequest = '/auth/otp/request';
  static const String otpVerify = '/auth/login/otp';
}
