import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:christmas_app/app/modules/home/widgets/progress/progress_widget.dart';

main() {
  testWidgets('ProgressWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(ProgressWidget(color: null, continent: null, progress: null,)));
    final textFinder = find.text('Progress');
    expect(textFinder, findsOneWidget);
  });
}
