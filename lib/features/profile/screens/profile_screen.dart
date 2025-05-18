import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cattle_health/features/auth/bloc/auth_bloc.dart';
import 'package:cattle_health/features/auth/bloc/auth_state.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _farmAddressController = TextEditingController();
  final _pinCodeController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  void _loadUserData() {
    final state = context.read<AuthBloc>().state;
    state.maybeWhen(
      authenticated: (user) {
        _nameController.text = user.name;
        // Remove the +91 prefix if present
        _phoneController.text = user.phoneNumber.replaceFirst(RegExp(r'^\+?91'), '');
        _farmAddressController.text = user.farmLocation.address;
        _pinCodeController.text = user.farmLocation.pinCode;
      },
      orElse: () {},
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _farmAddressController.dispose();
    _pinCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return state.maybeWhen(
            authenticated: (user) => SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Profile Header
                    Center(
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.transparent,
                            child: Icon(
                              Icons.person_rounded,
                              size: 64,
                              color: theme.colorScheme.primary,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Member since ${_formatDate(user.createdAt)}',
                            style: theme.textTheme.bodySmall,
                          ),
                          if (user.lastLogin != null)
                            Text(
                              'Last login: ${_formatDate(user.lastLogin)}',
                              style: theme.textTheme.bodySmall?.copyWith(
                                color: theme.colorScheme.onSurfaceVariant,
                              ),
                            ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 32),

                    // Profile Form
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Personal Information',
                              style: theme.textTheme.titleLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 24),
                            TextFormField(
                              controller: _nameController,
                              decoration: const InputDecoration(
                                labelText: 'Full Name',
                                prefixIcon: Icon(Icons.person),
                                border: OutlineInputBorder(),
                              ),
                              textCapitalization: TextCapitalization.words,
                              enabled: false,
                            ),
                            const SizedBox(height: 16),
                            TextFormField(
                              controller: _phoneController,
                              decoration: const InputDecoration(
                                labelText: 'Phone Number',
                                prefixIcon: Icon(Icons.phone),
                                prefixText: '+91 ',
                                border: OutlineInputBorder(),
                              ),
                              keyboardType: TextInputType.phone,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                                LengthLimitingTextInputFormatter(10),
                              ],
                              enabled: false,
                            ),
                            const SizedBox(height: 24),
                            Text(
                              'Farm Information',
                              style: theme.textTheme.titleLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 24),
                            TextFormField(
                              controller: _farmAddressController,
                              decoration: const InputDecoration(
                                labelText: 'Farm Address',
                                prefixIcon: Icon(Icons.location_on),
                                border: OutlineInputBorder(),
                              ),
                              maxLines: 2,
                              textCapitalization: TextCapitalization.words,
                              enabled: false,
                            ),
                            const SizedBox(height: 16),
                            TextFormField(
                              controller: _pinCodeController,
                              decoration: const InputDecoration(
                                labelText: 'PIN Code',
                                prefixIcon: Icon(Icons.location_city),
                                border: OutlineInputBorder(),
                              ),
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                                LengthLimitingTextInputFormatter(6),
                              ],
                              enabled: false,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            orElse: () => const Center(
              child: Text('Please login to view profile'),
            ),
          );
        },
      ),
    );
  }

  String _formatDate(DateTime? date) {
    if (date == null) return 'N/A';
    return '${date.day}/${date.month}/${date.year}';
  }
}
