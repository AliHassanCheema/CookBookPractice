main() {
  collectionPlayground();
}

void collectionPlayground() {
  // listPlayground();
  // mapPlayground();
  // setPlayground();
  collectionControlFlow();
}

void listPlayground() {
  final numbers = [1, 2, 3, 5, 7];

  numbers.add(10);
  numbers.addAll([4, 1, 35]);
  numbers[1] = 15;

  print('The second nunber is ${numbers[1]}');

  for (int number in numbers) {
    print(number);
  }
}

void mapPlayground() {
  final Map ages = {
    'Mike': 18,
    'Peter': 35,
    'Jennifer': 26,
  };

  ages['Tom'] = 48;

  final ageOfPeter = ages['Peter'];
  print('Peter is $ageOfPeter years old.');

  ages.remove('Peter');

  // ages.forEach((String name, int age) {
  //   print('$name is $age years old');
  // });

  // final james = Name('James', 'Buchanan');
  // final brenda = Name('Brenda', 'Fitzpatrick');

  // final namesAndAges = <Name, int>{
  //   james: 83,
  //   brenda: 53,
  // };
}

void setPlayground() {
  final ministers = {'Justin', 'Stephen', 'Paul', 'Jean', 'Kim', 'Brian'};
  ministers.addAll({'John', 'Pierre', 'Joe', 'Pierre'});

  final isJustinAMinister = ministers.contains('Justin');
  print(isJustinAMinister);

  for (String primeMinister in ministers) {
    print('$primeMinister is a Prime Minister.');
  }
}

void collectionControlFlow() {
  // Dart now allows you to add control flow inside array declarations
  // These language features were developed specifically for Flutter

  // You can now include if states, for loops
  // and spread operators inside collections
  const addMore = true;
  final randomNumbers = [
    34,
    232,
    54,
    32,
    if (addMore) ...[
      534343,
      4423,
      3432432,
    ],
  ];

  final duplicated = [
    for (int number in randomNumbers) number * 2,
    for (int i = 0; i < 100; i++) i,
  ];

  print(duplicated);
}
