import 'package:christmas_app/app/modules/home/widgets/snow/snow_bloc.dart';
import 'package:christmas_app/app/modules/home/pages/not_granted_acess/not_granted_acess_bloc.dart';
import 'package:christmas_app/app/modules/home/pages/start/start_bloc.dart';
import 'package:christmas_app/app/modules/home/widgets/progress/progress_bloc.dart';
import 'package:christmas_app/app/modules/home/widgets/avatar/avatar_bloc.dart';
import 'package:christmas_app/app/modules/home/home_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:christmas_app/app/modules/home/home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SnowBloc()),
        Bind((i) => NotGrantedAcessBloc()),
        Bind((i) => StartBloc()),
        Bind((i) => ProgressBloc()),
        Bind((i) => AvatarBloc()),
        Bind((i) => HomeBloc()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
