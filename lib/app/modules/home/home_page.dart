import 'package:christmas_app/app/modules/home/pages/not_granted_acess/not_granted_acess_page.dart';
import 'package:christmas_app/app/shared/widgets/wave/wave_widget.dart';
import 'package:flutter/material.dart';

import 'pages/start/start_page.dart';
import 'widgets/snow/snow_widget.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(initialIndex: 1, length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCFEBF7),
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 220),
            child: Wave(),
          ),
          TabBarView(
            controller: controller,
            children: <Widget>[
              NotGrantedAcessPage(),
              StartPage(),
              NotGrantedAcessPage()
            ],
          ),
          Positioned.fill(
            child: IgnorePointer(
              child: SnowWidget(30),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(        
        color: Colors.white,
        height: 80,
        child: Column(
          children: <Widget>[
            Container(
              child: Wave(opacity: true),
              height: 10,
            ),
            TabBar(
              controller: controller,
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.business,
                    size: 35,
                    color: Color(0xffE2E7EB),
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.home,
                    size: 35,
                    color: Color(0xffE2E7EB),
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.place,
                    size: 35,
                    color: Color(0xffE2E7EB),
                  ),
                ),
              ],
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding: EdgeInsets.all(5.0),
              indicatorColor: Colors.red,
              indicator: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        offset: Offset(1, 2),
                        color: Colors.black26)
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
