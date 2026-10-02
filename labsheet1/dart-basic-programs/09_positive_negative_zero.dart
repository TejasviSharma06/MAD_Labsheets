import 'dart:io';

void main() {
  print("Enter a number:");
  double number = double.parse(stdin.readLineSync()!);

  if (number > 0) {
    print("Positive number");
  } else if (number < 0) {
    print("Negative number");
  } else {
    print("Zero");
  }
}
