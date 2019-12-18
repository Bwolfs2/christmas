import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        Container(  
          width: 180,
          height: 180,
        ),
        CircleAvatar(
          radius: 80,
          backgroundColor: Color(0xff8ACDEA),
        ),
        Container(
          height: 160,
          width: 160,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(300),
            child: Image.asset(
              "assets/papai_noel_head.png",
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      ],
    );
  }
}
