import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:christmas_app/app/shared/widgets/wave/wave_widget.dart';

main() {
  testWidgets('WaveWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(Wave()));
    final textFinder = find.text('Wave');
    expect(textFinder, findsOneWidget);
  });
}
