import 'dart:math';

class User {
  late String _name;
  late int _age;
  late List<int> luckyNumber;

  User() {
    _name = "no name";
    _age = 0;
    luckyNumber = [];
    for (var i = 0; i < 3; i++) {
      luckyNumber.add(Random().nextInt(11));
    }
  }

  set setName(String value) {
    if (value.split(' ').length < 2) {
      value = value + " default";
    }
    _name = value;
  }

  set setAge(int value) {
    if (value < 0) {
      value *= -1;
    }
    _age = value;
  }

  String get name {
    return _name;
  }

  int get age {
    return _age;
  }
}
