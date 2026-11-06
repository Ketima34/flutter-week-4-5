
enum BloodFlow {
  spotting ,
  light,
  medium,
  large,
  heavy,
}

enum BloodColor {
  lightRed,
  brightRed,
  darkRed,
  brown,
  black,
}

enum CrampLevel {
  none,
  rarely,
  slightly,
  very,
  extremely,
}

enum Mood {
  calm,
  happy,
  energetic,
  tired,
  apathetic,
  irritated,
  sad,
  depressed,
}

enum BodySymptom {
  headache,
  dizziness,
  pimples,
  musclePain,
  itching,
}

class MenstrualLog {
  final String id;
  final DateTime date;

  final BloodFlow? bloodFlow;
  final BloodColor? bloodColor;
  final CrampLevel? cramps;
  final Mood? mood;

  final List<BodySymptom> bodySymptoms;

  MenstrualLog({
    required this.id,
    required this.date,
    this.bloodFlow,
    this.bloodColor,
    this.cramps,
    this.mood,
    this.bodySymptoms = const [],
  });
}
