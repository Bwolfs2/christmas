import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:christmas_app/app/modules/home/home_module.dart';
import 'package:christmas_app/app/modules/home/pages/start/start_bloc.dart';
import 'package:christmas_app/app/modules/home/widgets/avatar/avatar_widget.dart';
import 'package:christmas_app/app/modules/home/widgets/progress/progress_widget.dart';
import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  final String title;
  const StartPage({Key key, this.title = "Start"}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  var bloc = HomeModule.to.get<StartBloc>();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                AvatarWidget(),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Santa Claus",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff263D4D)),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Stack(
                                overflow: Overflow.visible,
                                children: <Widget>[
                                  Icon(
                                    Icons.radio_button_unchecked,
                                    color: Colors.green,
                                    size: 40,
                                  ),
                                  Positioned(
                                    right: -5,
                                    top: -5,
                                    child: Icon(
                                      Icons.check,
                                      color: Colors.green,
                                      size: 40,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              StreamBuilder<int>(
                                  stream: bloc.clock$.stream,
                                  builder: (context, snapshot) {
                                    return Row(
                                      children: <Widget>[
                                        AutoSizeText(
                                          getPresentsDelivered(snapshot) +
                                              " mln",
                                          style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff3A496A),
                                          ),
                                        )
                                      ],
                                    );
                                  }),
                            ],
                          ),
                          Text(
                            "PRESENTS DELIVERED",
                            style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffB4BEC7)),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.update,
                                color: Colors.yellow,
                                size: 40,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              StreamBuilder<int>(
                                  stream: bloc.clock$.stream,
                                  builder: (context, snapshot) {
                                    return AutoSizeText(
                                      getPresentsToDeliver(snapshot) + " mln",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff3A496A),
                                      ),
                                    );
                                  })
                            ],
                          ),
                          Text(
                            "PRESENTS TO DELIVER",
                            style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffB4BEC7)),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Divider(
                    thickness: 4,
                    color: Colors.grey.withOpacity(.1),
                  ),
                ),
                StreamBuilder<int>(
                    stream: bloc.clock$.stream,
                    builder: (context, snapshot) {
                      if (!snapshot.hasData) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }

                      var valor = snapshot.data;

                      return Column(
                          children: List.generate(7, (index) {
                        switch (index) {
                          case 0:
                            return ProgressWidget(
                              color: Colors.blue,
                              continent: "Europe",
                              progress: getPercent(index, valor),
                            );

                          case 1:
                            return ProgressWidget(
                              color: Colors.yellow,
                              continent: "Asia",
                              progress: getPercent(index, valor),
                            );
                          case 2:
                            return ProgressWidget(
                              color: Colors.green,
                              continent: "Austrália",
                              progress: getPercent(index, valor),
                            );
                          case 3:
                            return ProgressWidget(
                              color: Colors.pink,
                              continent: "Africa",
                              progress: getPercent(index, valor),
                            );
                          case 4:
                            return ProgressWidget(
                              color: Colors.orange,
                              continent: "Antarctica",
                              progress: getPercent(index, valor),
                            );
                          case 5:
                            return ProgressWidget(
                              color: Colors.indigo,
                              continent: "North America",
                              progress: getPercent(index, valor),
                            );
                          case 6:
                            return ProgressWidget(
                              color: Colors.cyan,
                              continent: "South America",
                              progress: getPercent(index, valor),
                            );
                            break;
                          default:
                            return Container();
                        }
                      }));
                    }),
              ],
            ),
          ),
        ),
        Positioned(
          top: 40,
          right: 20,
          child: Stack(
            children: <Widget>[
              Icon(
                Icons.add_alert,
                size: 40,
                color: Color(0xff89AEC0),
              ),
              Positioned(
                  top: 0,
                  right: 0,
                  child: Icon(
                    Icons.radio_button_checked,
                    size: 15,
                    color: Colors.red,
                  ))
            ],
          ),
        ),
        Positioned(
          top: 40,
          left: 20,
          child: Icon(
            Icons.mode_edit,
            size: 30,
            color: Color(0xff89AEC0),
          ),
        )
      ],
    );
  }

  String getPresentsDelivered(AsyncSnapshot<int> snapshot) {
    if (DateTime.now().isAfter(DateTime(2019, 12, 25, 23, 59, 59))) {
      return "${double.maxFinite}";
    }

    if (!snapshot.hasData ||
        DateTime.now().isBefore(DateTime(2019, 12, 24, 23, 59, 59))) {
      return "0";
    }

    return "${snapshot.data}";
  }

  String getPresentsToDeliver(AsyncSnapshot<int> snapshot) {
    if (DateTime.now().isAfter(DateTime(2019, 12, 25, 23, 59, 59))) {
      return "0";
    }

    if (!snapshot.hasData ||
        DateTime.now().isBefore(DateTime(2019, 12, 24, 23, 59, 59))) {
      return "${86400}";
    }

    return "${86400 - snapshot.data}";
  }
}

const total = 86400;

int getPercent(int indice, int atual) {
  if (DateTime.now().isAfter(DateTime(2019, 12, 25, 23, 59, 59))) {
    return 100;
  }

  if (DateTime.now().isBefore(DateTime(2019, 12, 24, 23, 59, 59))) {
    return 0;
  }

  var partial = 12342;

  if (atual > partial * (indice + 1) || atual >= total) {
    return 100;
  }

  if (indice == 0) {
    return (partial / atual * 25).round();
  }

  atual = atual - (partial * (indice - 1));

  var result = (partial / atual * 25).round();

  return result < 0 ? 0 : result;
}
