import 'package:flutter_modular/flutter_modular.dart';
import 'package:rxdart/rxdart.dart';

class StartBloc extends Disposable {
  StartBloc() {
    updateTime();
  }

  var clock$ = BehaviorSubject<int>();

  Function(int) get changeTime => clock$.sink.add;

  updateTime() async {
    var date = DateTime(2019,03,4,15,59,50);
    changeTime(date.hour * 60 * 60 + date.minute * 60 + date.second);
    await Future.delayed(Duration(seconds: 1), updateTime);
  }

  @override
  void dispose() {
    clock$.close();
  }
}


