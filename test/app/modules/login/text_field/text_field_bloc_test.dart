import 'package:christmas_app/app/modules/login/widgets/text_field/text_field_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:christmas_app/app/app_module.dart';
import 'package:christmas_app/app/modules/home/home_module.dart';

void main() {
  Modular.init(AppModule());
  Modular.bindModule(HomeModule());
  TextFieldBloc bloc;

  setUp(() {
    bloc = HomeModule.to.get<TextFieldBloc>();
  });

  group('TextFieldBloc Test', () {
    test("First Test", () {
      expect(bloc, isInstanceOf<TextFieldBloc>());
    });
  });
}
