import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:christmas_app/app/modules/home/pages/start/start_page.dart';

main() {
  testWidgets('StartPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(StartPage(title: 'Start')));
    final titleFinder = find.text('Start');
    expect(titleFinder, findsOneWidget);
  });
}
