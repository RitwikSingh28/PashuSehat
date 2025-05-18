import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:cattle_health/features/cattle/models/cattle_model.dart';
import 'package:cattle_health/features/cattle/bloc/cattle_bloc.dart';
import 'package:cattle_health/features/cattle/bloc/cattle_event.dart';
import 'package:cattle_health/features/cattle/bloc/cattle_state.dart';

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
  String? _selectedVariety;
  Gender _selectedGender = Gender.female;

  // List of Indian cattle breeds
  final List<String> _cattleBreeds = [
    'Gir',
    'Sahiwal',
    'Red Sindhi',
    'Tharparkar',
    'Rathi',
    'Kankrej',
    'Ongole',
    'Deoni',
    'Hariana',
    'Khillari',
    'Kangayam',
    'Amritmahal',
    'Hallikar',
    'Vechur',
    'Punganur',
    'Krishna Valley',
    'Nagori',
    'Malvi',
    'Nimari',
    'Dangi',
    'Gaolao',
    'Red Kandhari',
    'Bargur',
    'Umblachery',
    'Alambadi',
    'Bachaur',
    'Gangatiri',
    'Mewati',
    'Ponwar',
    'Kosali',
    'Belahi',
    'Ladakhi',
    'Siri',
    'Lakhimi'
  ]..sort(); // Sort alphabetically

  // Second form fields
  final _collarTagController = TextEditingController();
  final _govtIdController = TextEditingController();
  final _fatherNameController = TextEditingController();
  final _motherNameController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _collarTagController.dispose();
    _govtIdController.dispose();
    _fatherNameController.dispose();
    _motherNameController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState?.validate() ?? false) {
      if (_selectedVariety == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please select a cattle breed')),
        );
        return;
      }
      if (_dateOfBirth == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please select date of birth')),
        );
        return;
      }

      context.read<CattleBloc>().add(
            CattleEvent.createCattle(
              tagId: _collarTagController.text,
              name: _nameController.text,
              dateOfBirth: _dateOfBirth!,
              gender: _selectedGender,
              ageGroup: _selectedAgeGroup,
              breed: _selectedVariety!,
              governmentId: _govtIdController.text,
              fatherName: _fatherNameController.text.isEmpty
                  ? null
                  : _fatherNameController.text,
              motherName: _motherNameController.text.isEmpty
                  ? null
                  : _motherNameController.text,
            ),
          );

      // Navigation will be handled in the BlocListener
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Cattle'),
      ),
      body: BlocListener<CattleBloc, CattleState>(
        listener: (context, state) {
          state.when(
            initial: () {},
            loading: () {},
            loaded: (_) {},
            singleLoaded: (_) {},
            created: (cattle) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Cattle added successfully')),
              );
              context.pop();
            },
            updated: (_) {},
            deleted: () {},
            error: (error) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(error.message),
                  backgroundColor: Colors.red,
                ),
              );
            },
          );
        },
        child: Form(
          key: _formKey,
          child: Stepper(
            currentStep: _currentStep,
            onStepContinue: () {
              final isLastStep = _currentStep == 1;
              if (!isLastStep) {
                if (_selectedVariety == null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Please select a cattle breed')),
                  );
                  return;
                }
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
                    DropdownButtonFormField<Gender>(
                      value: _selectedGender,
                      decoration: const InputDecoration(
                        labelText: 'Gender *',
                      ),
                      items: Gender.values.map((gender) {
                        return DropdownMenuItem(
                          value: gender,
                          child: Text(
                            gender.toString().split('.').last.toUpperCase(),
                          ),
                        );
                      }).toList(),
                      onChanged: (value) {
                        if (value != null) {
                          setState(() {
                            _selectedGender = value;
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
                    Autocomplete<String>(
                      optionsBuilder: (TextEditingValue textEditingValue) {
                        if (textEditingValue.text.isEmpty) {
                          return _cattleBreeds;
                        }
                        return _cattleBreeds.where((breed) => breed
                            .toLowerCase()
                            .contains(textEditingValue.text.toLowerCase()));
                      },
                      onSelected: (String selection) {
                        setState(() {
                          _selectedVariety = selection;
                        });
                      },
                      fieldViewBuilder: (BuildContext context,
                          TextEditingController textEditingController,
                          FocusNode focusNode,
                          VoidCallback onFieldSubmitted) {
                        return TextFormField(
                          controller: textEditingController,
                          focusNode: focusNode,
                          decoration: InputDecoration(
                            labelText: 'Breed *',
                            hintText: 'Search or select cattle breed',
                            suffixIcon: _selectedVariety != null
                                ? IconButton(
                                    icon: const Icon(Icons.clear),
                                    onPressed: () {
                                      textEditingController.clear();
                                      setState(() {
                                        _selectedVariety = null;
                                      });
                                    },
                                  )
                                : null,
                          ),
                        );
                      },
                      optionsViewBuilder: (BuildContext context,
                          AutocompleteOnSelected<String> onSelected,
                          Iterable<String> options) {
                        return Align(
                          alignment: Alignment.topLeft,
                          child: Material(
                            elevation: 4.0,
                            child: ConstrainedBox(
                              constraints: const BoxConstraints(maxHeight: 200),
                              child: ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                itemCount: options.length,
                                itemBuilder: (BuildContext context, int index) {
                                  final String option = options.elementAt(index);
                                  return ListTile(
                                    title: Text(option),
                                    onTap: () {
                                      onSelected(option);
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    if (_selectedVariety != null) ...[
                      const SizedBox(height: 8),
                      Text(
                        'Selected breed: $_selectedVariety',
                        style: const TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ],
                ),
                isActive: _currentStep >= 0,
              ),
              Step(
                title: const Text('Additional Details'),
                content: Column(
                  children: [
                    TextFormField(
                      controller: _collarTagController,
                      decoration: const InputDecoration(
                        labelText: 'Collar Tag *',
                        hintText: 'Enter collar tag ID',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a collar tag ID';
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
                      controller: _fatherNameController,
                      decoration: const InputDecoration(
                        labelText: 'Father Name (Optional)',
                        hintText: "Enter father's name if known",
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _motherNameController,
                      decoration: const InputDecoration(
                        labelText: 'Mother Name (Optional)',
                        hintText: "Enter mother's name if known",
                      ),
                    ),
                  ],
                ),
                isActive: _currentStep >= 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
