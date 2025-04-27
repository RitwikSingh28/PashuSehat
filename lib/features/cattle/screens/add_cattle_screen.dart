import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:cattle_health/features/cattle/models/cattle_model.dart';

enum AgeGroup { calf, adult, retired }

class AddCattleScreen extends StatefulWidget {
  const AddCattleScreen({super.key});

  @override
  State<AddCattleScreen> createState() => _AddCattleScreenState();
}

class _AddCattleScreenState extends State<AddCattleScreen> {
  final _formKey = GlobalKey<FormState>();
  int _currentStep = 0;

  // Form fields
  final _nameController = TextEditingController();
  DateTime? _dateOfBirth;
  AgeGroup _selectedAgeGroup = AgeGroup.adult;
  final _varietyController = TextEditingController();

  // Second form fields
  final _collarTagController = TextEditingController();
  final _govtIdController = TextEditingController();
  final _fatherIdController = TextEditingController();
  final _motherIdController = TextEditingController();

  List<String> _availableCollarTags = [
    'TAG001',
    'TAG002',
    'TAG003',
    'TAG004',
  ]; // TODO: Replace with actual data

  @override
  void dispose() {
    _nameController.dispose();
    _varietyController.dispose();
    _collarTagController.dispose();
    _govtIdController.dispose();
    _fatherIdController.dispose();
    _motherIdController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState?.validate() ?? false) {
      // TODO: Implement actual form submission
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Cattle added successfully')),
      );
      context.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Cattle'),
      ),
      body: Form(
        key: _formKey,
        child: Stepper(
          currentStep: _currentStep,
          onStepContinue: () {
            if (_currentStep < 1) {
              setState(() {
                _currentStep++;
              });
            } else {
              _submitForm();
            }
          },
          onStepCancel: () {
            if (_currentStep > 0) {
              setState(() {
                _currentStep--;
              });
            } else {
              context.pop();
            }
          },
          steps: [
            Step(
              title: const Text('Basic Information'),
              content: Column(
                children: [
                  TextFormField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                      labelText: 'Name *',
                      hintText: 'Enter cattle name',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a name';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  ListTile(
                    title: const Text('Date of Birth *'),
                    subtitle: Text(_dateOfBirth != null
                      ? '${_dateOfBirth!.day}/${_dateOfBirth!.month}/${_dateOfBirth!.year}'
                      : 'Select date'),
                    trailing: const Icon(Icons.calendar_today),
                    onTap: () async {
                      final date = await showDatePicker(
                        context: context,
                        initialDate: _dateOfBirth ?? DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime.now(),
                      );
                      if (date != null) {
                        setState(() {
                          _dateOfBirth = date;
                        });
                      }
                    },
                  ),
                  const SizedBox(height: 16),
                  DropdownButtonFormField<AgeGroup>(
                    value: _selectedAgeGroup,
                    decoration: const InputDecoration(
                      labelText: 'Age Group *',
                    ),
                    items: AgeGroup.values.map((group) {
                      return DropdownMenuItem(
                        value: group,
                        child: Text(group.name.toUpperCase()),
                      );
                    }).toList(),
                    onChanged: (value) {
                      if (value != null) {
                        setState(() {
                          _selectedAgeGroup = value;
                        });
                      }
                    },
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _varietyController,
                    decoration: const InputDecoration(
                      labelText: 'Variety *',
                      hintText: 'Enter cattle variety',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the variety';
                      }
                      return null;
                    },
                  ),
                ],
              ),
              isActive: _currentStep >= 0,
            ),
            Step(
              title: const Text('Additional Details'),
              content: Column(
                children: [
                  DropdownButtonFormField<String>(
                    value: _collarTagController.text.isEmpty ? null : _collarTagController.text,
                    decoration: const InputDecoration(
                      labelText: 'Collar Tag *',
                    ),
                    items: _availableCollarTags.map((tag) {
                      return DropdownMenuItem(
                        value: tag,
                        child: Text(tag),
                      );
                    }).toList(),
                    onChanged: (value) {
                      if (value != null) {
                        _collarTagController.text = value;
                      }
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please select a collar tag';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _govtIdController,
                    decoration: const InputDecoration(
                      labelText: 'Government ID *',
                      hintText: 'Enter government ID',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the government ID';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _fatherIdController,
                    decoration: const InputDecoration(
                      labelText: 'Father ID (Optional)',
                      hintText: 'Enter father\'s ID if known',
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _motherIdController,
                    decoration: const InputDecoration(
                      labelText: 'Mother ID (Optional)',
                      hintText: 'Enter mother\'s ID if known',
                    ),
                  ),
                ],
              ),
              isActive: _currentStep >= 1,
            ),
          ],
        ),
      ),
    );
  }
}
