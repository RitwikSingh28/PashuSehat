enum NoteType {
  health('Health'),
  feeding('Feeding'),
  vaccination('Vaccination'),
  medication('Medication'),
  general('General');

  final String label;
  const NoteType(this.label);
}
