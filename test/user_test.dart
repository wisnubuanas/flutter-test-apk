import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_app/user.dart';

void main() {
  group(
    "test nama",
    () {
      User user1 = User();
      test(
        "nama harus lebih dari 2 suku kata",
        () {
          user1.setName = "rafi";
          expect(user1.name.split(' ').length, greaterThanOrEqualTo(2));
          expect(user1.name.split(' ')[1], equals("default"));

          user1.setName = "nama lengkap";
          expect(user1.name.split(' ').length, greaterThanOrEqualTo(2));
          // expect(user1.name.split(' ')[1], equals("default"));
        },
      );
      test(
        "test lainnya",
        () {},
      );
    },
  );

  group(
    "tes umur",
    () {
      User user1 = User();
      test(
        "umur harus bernilai positif",
        () {
          user1.setAge = 24;
          expect(user1.age, isPositive);
          expect(user1.age, equals(24));

          user1.setAge = -24;
          expect(user1.age, isPositive);
          expect(user1.age, equals(24));
        },
      );
    },
  );

  group(
    "test luckyNumber",
    () {
      User user1 = User();
      test(
        "setiap user memiliki lucky number",
        () {
          expect(user1.luckyNumber, isNotNull);
        },
      );
      test(
        "lucky number setiap user ada 3 angka dan tidak ada yang negatif",
        () {
          expect(user1.luckyNumber,
              allOf([hasLength(equals(3)), anyElement(isNot(isNegative))]));
        },
      );
    },
  );
}
