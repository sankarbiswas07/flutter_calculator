import 'package:basics/app/app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("[UI Component]: Basic Calculator", (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.byKey(const Key("InputX")), findsOneWidget);
    expect(find.byKey(const Key("InputY")), findsOneWidget);
    expect(find.byKey(const Key("ResultZ")), findsOneWidget);
    expect(find.byIcon(CupertinoIcons.divide), findsOneWidget);
    expect(find.byIcon(CupertinoIcons.multiply), findsOneWidget);
    expect(find.byIcon(CupertinoIcons.add), findsOneWidget);
    expect(find.byIcon(CupertinoIcons.minus), findsOneWidget);
    expect(find.byIcon(CupertinoIcons.refresh_thin), findsOneWidget);
  });
}
