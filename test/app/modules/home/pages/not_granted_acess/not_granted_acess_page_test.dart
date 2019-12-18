import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:christmas_app/app/modules/home/pages/not_granted_acess/not_granted_acess_page.dart';

main() {
  testWidgets('NotGrantedAcessPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(
        buildTestableWidget(NotGrantedAcessPage(title: 'NotGrantedAcess')));
    final titleFinder = find.text('NotGrantedAcess');
    expect(titleFinder, findsOneWidget);
  });
}
