import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:christmas_app/app/modules/home/widgets/snow/snow_widget.dart';

main() {
  testWidgets('SnowWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(SnowWidget(0)));
    final textFinder = find.text('Snow');
    expect(textFinder, findsOneWidget);
  });
}
