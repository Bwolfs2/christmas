import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:christmas_app/app/app_module.dart';
import 'package:christmas_app/app/modules/home/home_bloc.dart';
import 'package:christmas_app/app/modules/home/home_module.dart';

void main() {
  Modular.init(AppModule());
  HomeBloc bloc;

  setUp(() {
    bloc = HomeModule.to.get<HomeBloc>();
  });

  group('HomeBloc Test', () {
    test("First Test", () {
      expect(bloc, isInstanceOf<HomeBloc>());
    });
  });
}
