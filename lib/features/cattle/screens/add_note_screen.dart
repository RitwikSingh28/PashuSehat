import 'package:flutter/material.dart';
import 'package:cattle_health/features/cattle/models/note_type.dart';
import 'package:intl/intl.dart';

class AddNoteScreen extends StatefulWidget {
  final String cattleId;

  const AddNoteScreen({
    super.key,
    required this.cattleId,
  });

  @override
  State<AddNoteScreen> createState() => _AddNoteScreenState();
}

class _AddNoteScreenState extends State<AddNoteScreen> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _bodyController = TextEditingController();

  DateTime _selectedDateTime = DateTime.now();
  NoteType _selectedNoteType = NoteType.general;

  Future<void> _selectDateTime() async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDateTime,
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    );

    if (pickedDate != null) {
      final TimeOfDay? pickedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.fromDateTime(_selectedDateTime),
      );

      if (pickedTime != null) {
        setState(() {
          _selectedDateTime = DateTime(
            pickedDate.year,
            pickedDate.month,
            pickedDate.day,
            pickedTime.hour,
            pickedTime.minute,
          );
        });
      }
    }
  }

  void _submitNote() {
    if (_formKey.currentState!.validate()) {
      // TODO: Implement note submission logic

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Note added successfully'),
          behavior: SnackBarBehavior.floating,
        ),
      );

      Navigator.pop(context, true); // Return true to indicate success
    }
  }

  @override
  void dispose() {
    _titleController.dispose();
    _bodyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Note'),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            // Date & Time Selector
            Card(
              child: ListTile(
                title: const Text('Date & Time'),
                subtitle: Text(
                  DateFormat('MMM d, y, h:mm a').format(_selectedDateTime),
                ),
                trailing: const Icon(Icons.calendar_today),
                onTap: _selectDateTime,
              ),
            ),
            const SizedBox(height: 16),

            // Note Type Dropdown
            Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: DropdownButtonFormField<NoteType>(
                  value: _selectedNoteType,
                  decoration: const InputDecoration(
                    labelText: 'Note Type',
                    border: InputBorder.none,
                  ),
                  items: NoteType.values.map((type) {
                    return DropdownMenuItem(
                      value: type,
                      child: Text(type.label),
                    );
                  }).toList(),
                  onChanged: (NoteType? value) {
                    if (value != null) {
                      setState(() {
                        _selectedNoteType = value;
                      });
                    }
                  },
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Title Input
            Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextFormField(
                  controller: _titleController,
                  decoration: const InputDecoration(
                    labelText: 'Title',
                    border: InputBorder.none,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a title';
                    }
                    return null;
                  },
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Note Body Input
            Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextFormField(
                  controller: _bodyController,
                  decoration: const InputDecoration(
                    labelText: 'Note',
                    border: InputBorder.none,
                    alignLabelWithHint: true,
                  ),
                  maxLines: 5,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a note';
                    }
                    return null;
                  },
                ),
              ),
            ),
            const SizedBox(height: 24),

            // Submit Button
            FilledButton.icon(
              onPressed: _submitNote,
              icon: const Icon(Icons.check),
              label: const Text('Submit Note'),
            ),
          ],
        ),
      ),
    );
  }
}
