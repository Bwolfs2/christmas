import 'package:christmas_app/app/modules/home/home_page.dart';
import 'package:christmas_app/app/modules/home/pages/start/start_page.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

main() {

  testWidgets('Get Percent', (WidgetTester tester) async {
     expect(100, getPercent(0, 86400));
      expect(100, getPercent(1, 86400));
      expect(100, getPercent(2, 86400));
      expect(100, getPercent(3, 86400));
      expect(100, getPercent(4, 86400));
      expect(100, getPercent(5, 86400));
      expect(100, getPercent(6, 86400));
      expect(100, getPercent(7, 86400));
  });

   testWidgets('Get Percent 50', (WidgetTester tester) async {
     expect(50, getPercent(0, 6171));  
     expect(50, getPercent(1, 12342 + 6171));       
     expect(50, getPercent(2, 2*12342 + 6171));  
  });
}
