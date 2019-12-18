import 'package:christmas_app/app/modules/login/widgets/text_field/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

main() {
  testWidgets('TextFieldWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(TextFieldWidget(
      controller: null,
      label: null, icon: null,
    )));
    final textFinder = find.text('TextField');
    expect(textFinder, findsOneWidget);
  });
}
