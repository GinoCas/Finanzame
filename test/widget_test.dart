import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:finanzame/app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  testWidgets('App smoketest', (WidgetTester tester) async {
    await tester.pumpWidget(const ProviderScope(child: FinanzameApp()));
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
