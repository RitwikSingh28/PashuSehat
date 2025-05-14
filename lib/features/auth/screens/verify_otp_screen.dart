import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:cattle_health/features/auth/bloc/auth_bloc.dart';
import 'package:cattle_health/features/auth/bloc/auth_event.dart';
import 'package:cattle_health/features/auth/bloc/auth_state.dart';
import 'package:cattle_health/routes/route_names.dart';

class VerifyOtpScreen extends StatefulWidget {
  final String userId;
  final String phone;
  final bool isRegistration;

  const VerifyOtpScreen({
    super.key,
    required this.userId,
    required this.phone,
    this.isRegistration = false,
  });

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  final _formKey = GlobalKey<FormState>();
  final _otpController = TextEditingController();
  int _resendTimer = 30;
  bool _isResendEnabled = false;

  @override
  void initState() {
    super.initState();
    _startResendTimer();
  }

  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }

  void _startResendTimer() {
    setState(() {
      _resendTimer = 30;
      _isResendEnabled = false;
    });

    Future.doWhile(() async {
      await Future.delayed(const Duration(seconds: 1));
      if (!mounted) return false;

      setState(() {
        if (_resendTimer > 0) {
          _resendTimer--;
        } else {
          _isResendEnabled = true;
        }
      });
      return _resendTimer > 0;
    });
  }

  void _handleVerifyOtp() {
    if (_formKey.currentState?.validate() ?? false) {
      if (widget.isRegistration) {
        context.read<AuthBloc>().add(
              VerifyRegistrationOtpEvent(
                userId: widget.userId,
                phone: widget.phone,
                otp: _otpController.text,
              ),
            );
      } else {
        context.read<AuthBloc>().add(
              VerifyOtpEvent(
                phone: widget.phone,
                otp: _otpController.text,
              ),
            );
      }
    }
  }

  void _handleResendOtp() {
    context.read<AuthBloc>().add(
          RequestOtpEvent(phone: widget.phone),
        );
    _startResendTimer();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          authenticated: (_) {
            context.go(RouteNames.dashboard);
          },
          error: (error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(error.message),
                backgroundColor: Colors.red,
              ),
            );
          },
          otpSent: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('OTP sent successfully!'),
              ),
            );
          },
          orElse: () {},
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Verify Phone Number'),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Icon(
                    Icons.sms_outlined,
                    size: 64,
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'Verification Code',
                    style: theme.textTheme.headlineSmall,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'We have sent the verification code to\n${widget.phone}',
                    style: theme.textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 32),
                  TextFormField(
                    controller: _otpController,
                    decoration: const InputDecoration(
                      labelText: 'OTP',
                      prefixIcon: Icon(Icons.lock_clock),
                      hintText: 'Enter verification code',
                    ),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(6),
                    ],
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the verification code';
                      }
                      if (value.length != 6) {
                        return 'Please enter a valid 6-digit code';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 24),
                  BlocBuilder<AuthBloc, AuthState>(
                    builder: (context, state) {
                      final isLoading = state.maybeWhen(
                        loading: () => true,
                        orElse: () => false,
                      );

                      return FilledButton(
                        onPressed: isLoading ? null : _handleVerifyOtp,
                        child: isLoading
                            ? const SizedBox(
                                height: 20,
                                width: 20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  color: Colors.white,
                                ),
                              )
                            : const Text('Verify'),
                      );
                    },
                  ),
                  const SizedBox(height: 24),
                  if (_resendTimer > 0)
                    Text(
                      'Resend code in $_resendTimer seconds',
                      style: theme.textTheme.bodySmall,
                      textAlign: TextAlign.center,
                    )
                  else
                    TextButton(
                      onPressed: _isResendEnabled ? _handleResendOtp : null,
                      child: const Text('Resend Code'),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
