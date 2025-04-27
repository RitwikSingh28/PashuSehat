import 'package:flutter/material.dart';

/// Time range options for data visualization
enum TimeRange {
  day,
  fifteenDays,
  thirtyDays,
}

/// A reusable widget for selecting time ranges in charts and data visualizations
class TimeRangeSelector extends StatelessWidget {
  final TimeRange selectedRange;
  final ValueChanged<TimeRange> onRangeChanged;

  const TimeRangeSelector({
    super.key,
    required this.selectedRange,
    required this.onRangeChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<TimeRange>(
      segments: const [
        ButtonSegment(
          value: TimeRange.day,
          label: Text('24h'),
        ),
        ButtonSegment(
          value: TimeRange.fifteenDays,
          label: Text('15d'),
        ),
        ButtonSegment(
          value: TimeRange.thirtyDays,
          label: Text('30d'),
        ),
      ],
      selected: {selectedRange},
      onSelectionChanged: (Set<TimeRange> newSelection) {
        onRangeChanged(newSelection.first);
      },
    );
  }
}
