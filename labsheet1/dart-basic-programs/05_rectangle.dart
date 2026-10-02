import 'dart:io';

void main() {
  print("Enter length:");
  double length = double.parse(stdin.readLineSync()!);

  print("Enter width:");
  double width = double.parse(stdin.readLineSync()!);

  print("Area: ${length * width}");
  print("Perimeter: ${2 * (length + width)}");
}
