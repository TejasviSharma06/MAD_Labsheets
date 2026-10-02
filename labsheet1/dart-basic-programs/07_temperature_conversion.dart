import 'dart:io';

void main() {
  print("Enter temperature in Celsius:");
  double celsius = double.parse(stdin.readLineSync()!);

  double fahrenheit = (celsius * 9 / 5) + 32;

  print("Temperature in Fahrenheit: $fahrenheit");
}
