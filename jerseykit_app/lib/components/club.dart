import 'package:flutter/material.dart';

class MyClubs extends StatelessWidget {

  final String imgPath;
  final bool isSelected;


  MyClubs({this.imgPath, this.isSelected});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: isSelected ? Color.fromRGBO(255, 54, 54, 1)
        : Color.fromRGBO(10, 10, 10, 1),
      ),
      child: Stack(
        children: <Widget>[
          Center(
            child: Image(
              height: 45,
              width: 45,
              image: AssetImage(imgPath),
            ),
          ),
        ],
      ),
    );
  }
}
