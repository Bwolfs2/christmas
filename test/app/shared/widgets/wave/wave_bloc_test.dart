import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:christmas_app/app/app_module.dart';
import 'package:christmas_app/app/shared/widgets/wave/wave_bloc.dart';
import 'package:christmas_app/app/app_module.dart';

void main() {
  Modular.init(AppModule());
  Modular.bindModule(AppModule());
  WaveBloc bloc;

  setUp(() {
    bloc = AppModule.to.get<WaveBloc>();
  });

  group('WaveBloc Test', () {
    test("First Test", () {
      expect(bloc, isInstanceOf<WaveBloc>());
    });
  });
}
