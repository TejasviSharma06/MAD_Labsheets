void main() {
  Map<String, String> student = {
    'Name': 'Tejasvi Sharma',
    'Roll Number': '101',
    'Course': 'BCA',
  };
  student.forEach((key, value) => print('$key: $value'));
}
