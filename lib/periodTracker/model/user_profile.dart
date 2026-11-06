
class UserProfile {
  final String id;
  String name;
  DateTime? birthDate;

  int averageCycleLength;
  int averagePeriodLength;

  UserProfile({
    required this.id,
    required this.name,
    this.birthDate,
    this.averageCycleLength = 28,
    this.averagePeriodLength = 5,
  });
}
