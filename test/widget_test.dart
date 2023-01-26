// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_test_app/main.dart';

void main() {
  testWidgets(
    "initiate app",
    (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(const MyApp());
      Text txt = tester.widget(find.byKey(Key("show counter")));

      // Verify that our counter starts at 0.
      expect(txt.data, "0");
      // expect(find.text('0'), findsOneWidget);
      // expect(find.text('1'), findsNothing);
    },
  );
  testWidgets('counter increment', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byKey(Key("tombol increment")));
    await tester.pump();

    // Verify that our counter has incremented.
    Text txt = tester.widget(find.byKey(Key("show counter")));
    expect(txt.data, "1");
    // expect(find.text('0'), findsNothing);
    // expect(find.text('1'), findsOneWidget);
  });
}
