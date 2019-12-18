import 'package:flutter/material.dart';

class ProgressWidget extends StatelessWidget {
  final Color color;
  final String continent;
  final int progress;

  const ProgressWidget(
      {Key key,
      @required this.color,
      @required this.continent,
      @required this.progress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 4,
                      backgroundColor: Color(0xffE2EBF0),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                          border: Border.all(width: 5, color: color),
                          borderRadius: BorderRadius.circular(200)),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    CircleAvatar(
                      radius: 4,
                      backgroundColor: Color(0xffE2EBF0),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    CircleAvatar(
                      radius: 4,
                      backgroundColor: Color(0xffE2EBF0),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              continent,
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold, color: Color(0xff3A496A)),
                            ),
                          ),
                          Text(
                            "$progress%",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold, color: Color(0xff3A496A)),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        color: Colors.green,
                        height: 5,
                        margin: EdgeInsets.only(right: 20),
                      ),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
