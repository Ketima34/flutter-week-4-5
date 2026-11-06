
class MenstrualCycle {
  final String id;
  final DateTime startDate;
  final DateTime? endDate;

  MenstrualCycle({
    required this.id,
    required this.startDate,
    this.endDate,
  });

  int get duration {
    if (endDate == null) return 0;
    return endDate!.difference(startDate).inDays + 1;
  }

  bool get isCompleted => endDate != null;

  bool containsDate(DateTime date) {
    final end = endDate ?? DateTime.now();

    return !date.isBefore(startDate) &&
        !date.isAfter(end);
  }
}
