import 'dart:io';

void main() {
  print("Enter radius:");
  double r = double.parse(stdin.readLineSync()!);

  double area = 3.14159 * r * r;

  print("Area of Circle: $area");
}
