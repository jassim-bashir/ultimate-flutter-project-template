import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('Dummy widget test', (WidgetTester tester) async {
    await tester.pumpWidget(Container());
    expect(find.byType(Container), findsOneWidget);
  });
}
