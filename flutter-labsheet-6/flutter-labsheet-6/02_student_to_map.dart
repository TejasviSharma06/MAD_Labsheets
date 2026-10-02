class Student {
  String name, course;
  int roll;
  Student(this.name, this.roll, this.course);

  Map<String, dynamic> toMap() => {'name': name, 'roll': roll, 'course': course};
  factory Student.fromMap(Map<String, dynamic> map) =>
      Student(map['name'], map['roll'], map['course']);
}

void main() {
  Student s = Student('Tejasvi', 101, 'BCA');
  Map<String, dynamic> map = s.toMap();
  print(map);
  Student s2 = Student.fromMap(map);
  print('${s2.name} ${s2.roll} ${s2.course}');
}
