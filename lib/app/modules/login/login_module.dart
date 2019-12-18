import 'package:christmas_app/app/modules/login/login_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:christmas_app/app/modules/login/login_page.dart';

import 'widgets/text_field/text_field_bloc.dart';

class LoginModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => TextFieldBloc()),
        Bind((i) => LoginBloc()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => LoginPage()),
      ];

  static Inject get to => Inject<LoginModule>.of();
}
