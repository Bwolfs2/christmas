import 'package:christmas_app/app/modules/home/home_module.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:christmas_app/app/app_module.dart';
import 'package:christmas_app/app/app_bloc.dart';
import 'package:christmas_app/app/app_module.dart';

void main() {
  Modular.init(AppModule());
  AppBloc bloc;
  Modular.addCoreInit(HomeModule());

  setUp(() {
    bloc = AppModule.to.get<AppBloc>();
  });

  group('AppBloc Test', () {
    test("First Test", () {
      expect(bloc, isInstanceOf<AppBloc>());
    });
  });
}
