import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_app/counter.dart';

void main() {
  Counter counter = Counter();

  test(
    "initial value should be 0",
    () {
      expect(counter.value, equals(0));
    },
  );

  test(
    "counter value should be incremented",
    () {
      counter.increment();
      expect(counter.value, equals(1));
    },
  );

  test(
    "counter value should be decremented",
    () {
      counter.decrement();
      expect(counter.value, -1);
      print("test3 selesai");
    },
  );

  setUp(
    () {
      counter = Counter();
    },
  );

  tearDown(
    () {
      print("test selesai");
    },
  );
}
