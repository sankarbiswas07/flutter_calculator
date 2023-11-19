import 'package:basics/app/app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final inputX = find.byKey(const Key("InputX"));
  final inputY = find.byKey(const Key("InputY"));
  final resultZ = find.byKey(const Key("ResultZ"));
  final divideButton = find.byIcon(CupertinoIcons.divide);
  final multiplyButton = find.byIcon(CupertinoIcons.multiply);
  final addButton = find.byIcon(CupertinoIcons.add);
  final minusButton = find.byIcon(CupertinoIcons.minus);
  final refreshButton = find.byIcon(CupertinoIcons.refresh_thin);

  testWidgets("[UI Component]: Basic Calculator", (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(inputX, findsOneWidget);
    expect(inputY, findsOneWidget);
    expect(resultZ, findsOneWidget);
    expect(divideButton, findsOneWidget);
    expect(multiplyButton, findsOneWidget);
    expect(addButton, findsOneWidget);
    expect(minusButton, findsOneWidget);
    expect(refreshButton, findsOneWidget);
  });

  testWidgets("[Functionality]: Basic Calculator", (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.enterText(inputX, "40");
    await tester.enterText(inputY, "20");

    // Divide : 40 / 20
    await tester.tap(divideButton);
    await tester.pump();
    // Check if ResultZ has the expected text value
    var resultZWidget = tester.widget<Text>(resultZ);
    expect(resultZWidget.data, "2.0000");

    // Multiply : 40 * 20
    await tester.tap(multiplyButton);
    await tester.pump();
    resultZWidget = tester.widget<Text>(resultZ);
    expect(resultZWidget.data, "800.0000");

    // add : 40 + 20
    await tester.tap(addButton);
    await tester.pump();
    resultZWidget = tester.widget<Text>(resultZ);
    expect(resultZWidget.data, "60.0000");

    // Sub : 40 - 20
    await tester.tap(minusButton);
    await tester.pump();
    resultZWidget = tester.widget<Text>(resultZ);
    expect(resultZWidget.data, "20.0000");
  });
}
