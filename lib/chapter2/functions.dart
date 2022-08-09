main() {
  functionPlayground();
}

void functionPlayground() {
  // int num = factorial(6);
  // print(num);
  // classicalFunctions();
  // optionalParameters();
  consumeClosure();
}

void printMyName(String name) {
  print('Hello $name');
}

int add(int a, int b) {
  return a + b;
}

int factorial(int number) {
  if (number <= 0) {
    return 1;
  }

  return number * factorial(number - 1);
}

void classicalFunctions() {
  printMyName('Anna');
  printMyName('Irina');

  final sum = add(5, 3);
  print(sum);

  print('10 Factorial is ${factorial(10)}');
}

void unnamed([String? name, int? age]) {
  final actualName = name ?? 'Unknown';
  final actualAge = age ?? 0;
  print('$actualName is $actualAge years old.');
}

void named({String? greeting, String? name}) {
  final actualGreeting = greeting ?? 'Hello';
  final actualName = name ?? 'Mystery Person';
  print('$actualGreeting, $actualName!');
}

String duplicate(String name, {int times = 1}) {
  String merged = '';
  for (int i = 0; i < times; i++) {
    merged += name;
    if (i != times - 1) {
      merged += ' ';
    }
  }

  return merged;
}

void optionalParameters() {
  unnamed('Huxley', 3);
  unnamed();

  named(greeting: 'Greetings and Salutations');
  named(name: 'Sonia');
  named(name: 'Alex', greeting: 'Bonjour');

  final multiply = duplicate('Mikey', times: 3);
  print(multiply);
}

typedef numberGetter = int Function();

int powerOfTwo({numberGetter? getter}) {
  return getter!() * getter();
}

void callbackExample(void Function(String value) callback) {
  callback('Hello Callback');
}

void closureInvoker(void Function() aClosure) {
  aClosure();
}

void consumeClosure() {
  final firstClassFunction = () {
    print('I am a closure!');
  };

  closureInvoker(firstClassFunction);
  closureInvoker(() {
    print('I am written inline');
  });

  final getFour = () => 4;
  final squared = powerOfTwo(getter: getFour);
  print(squared);

  callbackExample((result) {
    print(result);
  });
}
