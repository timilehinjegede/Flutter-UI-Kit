import 'package:flutter/material.dart';

class GameVideoComponent extends StatelessWidget {

  final String imgPath;


  GameVideoComponent(this.imgPath);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black87,
            image: DecorationImage(
                image: AssetImage(imgPath),
                fit: BoxFit.cover),
          ),
        ),
        Positioned(
          top: 85,
          left: 85,
          child: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35 / 2),
              color: Colors.blueAccent,
            ),
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
      ],
    );
  }
}
