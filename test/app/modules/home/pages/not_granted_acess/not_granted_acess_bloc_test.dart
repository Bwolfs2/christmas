import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:christmas_app/app/app_module.dart';
import 'package:christmas_app/app/modules/home/pages/not_granted_acess/not_granted_acess_bloc.dart';
import 'package:christmas_app/app/modules/home/home_module.dart';

void main() {
  Modular.init(AppModule());
  Modular.bindModule(HomeModule());
  NotGrantedAcessBloc bloc;

  setUp(() {
    bloc = HomeModule.to.get<NotGrantedAcessBloc>();
  });

  group('NotGrantedAcessBloc Test', () {
    test("First Test", () {
      expect(bloc, isInstanceOf<NotGrantedAcessBloc>());
    });
  });
}
