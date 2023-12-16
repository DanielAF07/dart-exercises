void main() {
  final numbers = [1, 2, 3, 4, 2, 3, 2, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10];

  print('Original list $numbers');
  print('Length ${numbers.length}');
  print('Index ${numbers[0]}');
  print('First ${numbers.first}');
  print('Last ${numbers.last}');
  print('Reversed ${numbers.reversed}');

  final reversedNumbers = numbers.reversed;

  print('Iterable: ${reversedNumbers}');
  print('List: ${reversedNumbers.toList()}');
  print('Set: ${reversedNumbers.toSet()}');

  final numbersGreaterThan5 = numbers.where((int number) {
    return number > 5;
  });

  print('>5 Iterable: $numbersGreaterThan5');
  print('>5 Set: ${numbersGreaterThan5.toSet()}');
}
