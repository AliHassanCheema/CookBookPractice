main() {
  stringPlayground();
}

void stringPlayground() {
  // basicStringDeclaration();
  // multiLineStrings();
  combiningStrings();
}

void basicStringDeclaration() {
  print('Single quotes');
  const aBoldStatement = 'Dart isn\'t loosely typed.';
  print(aBoldStatement);

  print("Hello, World");
  const aMoreMildOpinion = "Dart's popularity has skyrocketed with Flutter!";
  print(aMoreMildOpinion);
  const mixAndMatch =
      'Every programmer should write "Hello, World" when learning a new language.';
  print(mixAndMatch);
}

void multiLineStrings() {
  const withEscaping = 'One Fish\nTwo Fish\nRed Fish\nBlue Fish';
  print(withEscaping);

  const hamlet = """
  To be, or not to be, that is the question:
  Whether 'tis nobler in the mind to suffer
  The slings and arrows of outrageous fortune,
  Or to take arms against a sea of troubles
  And by opposing end them.
  """;

  print(hamlet);
}

void combiningStrings() {
  traditionalConcatenation();
  modernInterpolation();
}

void traditionalConcatenation() {
  const hello = 'Hello';
  const world = "world";

  const combined = '$hello $world';

  print(combined);
}

void modernInterpolation() {
  const year = 2011;
  const interpolated = 'Dart was announced in $year.';
  print(interpolated);

  const age = 35;
  const howOld = 'I am $age ${age == 1 ? 'year' : 'years'} old.';
  print(howOld);
}
