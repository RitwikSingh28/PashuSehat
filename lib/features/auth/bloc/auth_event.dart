import 'package:equatable/equatable.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object?> get props => [];
}

class RegisterEvent extends AuthEvent {
  final String phone;
  final String password;
  final String name;
  final String farmAddress;
  final String pinCode;

  const RegisterEvent({
    required this.phone,
    required this.password,
    required this.name,
    required this.farmAddress,
    required this.pinCode,
  });

  @override
  List<Object?> get props => [phone, password, name, farmAddress, pinCode];
}

class LoginEvent extends AuthEvent {
  final String phone;
  final String password;

  const LoginEvent({
    required this.phone,
    required this.password,
  });

  @override
  List<Object?> get props => [phone, password];
}

class RequestOtpEvent extends AuthEvent {
  final String phone;

  const RequestOtpEvent({required this.phone});

  @override
  List<Object?> get props => [phone];
}

class VerifyOtpEvent extends AuthEvent {
  final String phone;
  final String otp;

  const VerifyOtpEvent({required this.phone, required this.otp});

  @override
  List<Object?> get props => [phone, otp];
}

class VerifyRegistrationOtpEvent extends AuthEvent {
  final String userId;
  final String phone;
  final String otp;

  const VerifyRegistrationOtpEvent({
    required this.userId,
    required this.phone,
    required this.otp,
  });

  @override
  List<Object?> get props => [userId, phone, otp];
}

class LogoutEvent extends AuthEvent {
  const LogoutEvent();
}

class CheckAuthStatusEvent extends AuthEvent {
  const CheckAuthStatusEvent();
}
