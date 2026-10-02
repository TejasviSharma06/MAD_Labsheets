import 'dart:convert';

void main() {
  Map<String, dynamic> map = {'name': 'Tejasvi', 'age': 20};
  String json = jsonEncode(map);
  print(json);
  Map<String, dynamic> newMap = jsonDecode(json);
  print(newMap);
}
