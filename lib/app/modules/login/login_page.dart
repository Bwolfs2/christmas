import 'package:christmas_app/app/modules/home/widgets/snow/snow_widget.dart';
import 'package:christmas_app/app/shared/widgets/wave/wave_widget.dart';
import 'package:flutter/material.dart';

import 'widgets/text_field/text_field_widget.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCFEBF7),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height * .5,
                        child: Stack(
                          overflow: Overflow.visible,
                          alignment: Alignment.bottomCenter,
                          children: <Widget>[
                            Positioned(
                              bottom: MediaQuery.of(context).size.height * .30,
                              child: Image.asset(
                                "assets/papai_noel_cleaned.png",
                                fit: BoxFit.fitHeight,
                                height: MediaQuery.of(context).size.height * .5,
                              ),
                            ),
                            Wave(),
                            Container(
                              padding: const EdgeInsets.all(30),
                              child: Form(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    TextFieldWidget(
                                      controller: TextEditingController(),
                                      label: "Email",
                                      icon: Icons.mail,
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    TextFieldWidget(
                                      controller: TextEditingController(),
                                      label: "Password",
                                      icon: Icons.search,
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    RaisedButton(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                      color: Color(0xffDA1C4A),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 40),
                                        child: Text(
                                          "LOG IN",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20),
                                        ),
                                      ),
                                      onPressed: () {
                                        showDialog(
                                            context: context,
                                            child: AlertDialog(
                                              title: Text("Oops.."),
                                              content: Text(
                                                  "Email ou Senha inválidos.."),
                                              actions: <Widget>[
                                                FlatButton(
                                                  child: Text("Fechar"),
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                )
                                              ],
                                            ));
                                      },
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    FlatButton(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 40),
                                        child: Text(
                                          "NÃO QUERO ME LOGAR...",
                                          style: TextStyle(
                                              color: Color(0xffAFB6BC),
                                              fontSize: 12),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.pushReplacementNamed(
                                            context, "/home");
                                      },
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned.fill(
                        child: IgnorePointer(
                          child: SnowWidget(30),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
