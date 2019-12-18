import 'package:flutter/material.dart';

class NotGrantedAcessPage extends StatefulWidget {
  final String title;
  const NotGrantedAcessPage({Key key, this.title = "NotGrantedAcess"})
      : super(key: key);

  @override
  _NotGrantedAcessPageState createState() => _NotGrantedAcessPageState();
}

class _NotGrantedAcessPageState extends State<NotGrantedAcessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffCFEBF7),
        body: Container(
          alignment: Alignment.center,
          color: Colors.black54,
          child: Text(
            "No Access Granted",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ));
  }
}
