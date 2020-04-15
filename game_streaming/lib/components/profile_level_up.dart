import 'package:flutter/material.dart';

class ProfileLevelUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return   Stack(
      children: <Widget>[
        Positioned(
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                image: AssetImage('images/avatar.jpeg'),
              ),
              border: Border.all(
                color: Colors.red,
                width: 2.0,
              ),
            ),
          ),
          top: 13 / 2,
          left: 13 / 2,
        ),
        Container(
          height: 63,
          width: 63,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(63 / 2),
            border: Border.all(
              color: Colors.red,
              width: 2.0,
            ),
          ),
        ),
        Positioned(
          right: 0.1,
          bottom: -6,
          child: Container(
            height: 73,
            width: 64,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(67 / 2),
                bottomRight: Radius.circular(68 / 2),
              ),
              border: Border.all(
                color: Colors.white,
                width: 2.0,
              ),
            ),
          ),
        ),

        //manipulate a circle and give it a white border
        Positioned(
          left: 56.3,
          top: 19,
          child: Container(
            height: 7,
            width: 7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7 / 2),
              color: Colors.red,
            ),
          ),
        ),
      ],
    );
  }
}
