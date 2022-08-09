void main() {
  variablePlayground();
}

void variablePlayground() {
  // basicTypes();
  untypedVariables();
  // typeInterpolation();
  // immutableVariables();
}

void basicTypes() {
  int four = 4;
  double pi = 3.14;
  num someNumber = 24601;
  bool yes = true;
  bool no = false;

  print(four);
  print(pi);
  print(someNumber);
  print(yes);
  print(no);
}

void untypedVariables() {
  dynamic something = 14.2;
  print(something.runtimeType);
  something = 15;
  print(something.runtimeType);
}

void typeInterpolation() {
  var anInteger = 15;
  var aDouble = 27.6;
  var aBoolean = false;

  print(anInteger.runtimeType);
  print(anInteger);
  aDouble = 3;
  print(aDouble.runtimeType);
  print(aDouble);

  print(aBoolean.runtimeType);
  print(aBoolean);
}

// This is the preferred way to declare variables
// The `final` keyword will only allow you assign
// a variable once.
void immutableVariables() {
  const int immutableInteger = 5;
  const double immutableDouble = 0.015;

  // Type annotation is optional
  const interpolatedInteger = 10;
  const interpolatedDouble = 72.8;

  print(interpolatedInteger);
  print(interpolatedDouble);

  const aFullySealedVariable = true;
  print(aFullySealedVariable);
}
