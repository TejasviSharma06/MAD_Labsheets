import 'dart:io';

void main() {
  print("Enter first number:");
  double a = double.parse(stdin.readLineSync()!);

  print("Enter second number:");
  double b = double.parse(stdin.readLineSync()!);

  print("Sum: ${a + b}");
  print("Difference: ${a - b}");
  print("Product: ${a * b}");
  print("Quotient: ${a / b}");
}
