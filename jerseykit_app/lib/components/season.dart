import 'package:flutter/material.dart';

class MySeason extends StatelessWidget {

  final Color color;
  final String imgPath;
  final bool isHome;


  MySeason({this.color, this.imgPath, this.isHome});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: color,
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 76,
            child: Container(
              height: 270,
              width: 6,
              color: Colors.black,
            ),
          ),
          Positioned(
            left: 95,
            child: Container(
              height: 270,
              width: 6,
              color: Colors.black,
            ),
          ),
          Positioned(
            left: 116,
            child: Container(
              height: 270,
              width: 6,
              color: Colors.black,
            ),
          ),
          Positioned(
            top: 8,
            left: -85,
            child: Image(
              image: AssetImage(imgPath),
              fit: BoxFit.cover,
              height: 250,
            ),
          ),
          Positioned(
            left: 15,
            top: 215,
            child: Text(
              'Manchester United',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600
              ),
            ),
          ),
          Positioned(
            left: 15,
            top: 235,
            child: Text(
              isHome ? 'Home Kit 2019/2020' : 'Away Kit 2019/2020',
              style: TextStyle(
                color: Colors.white,
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
        ],
      ),
    );
  }
}
