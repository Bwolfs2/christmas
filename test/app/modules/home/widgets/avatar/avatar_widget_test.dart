import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:christmas_app/app/modules/home/widgets/avatar/avatar_widget.dart';

main() {
  testWidgets('AvatarWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(AvatarWidget()));
    final textFinder = find.text('Avatar');
    expect(textFinder, findsOneWidget);
  });
}
