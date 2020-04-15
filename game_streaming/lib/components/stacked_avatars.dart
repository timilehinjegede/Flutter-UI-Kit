import 'package:flutter/material.dart';

class StackedAvatars extends StatelessWidget {

  final String imgPath1;
  final String imgPath2;
  final String number;
  final bool hasBorder;
  final Color color;
  final Color borderColor;

  StackedAvatars({this.imgPath1, this.imgPath2, this.number, this.hasBorder, this
  .color, this.borderColor});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 80,
      child: Stack(
        children: <Widget>[
          Positioned(
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.red,
                border: hasBorder ? Border.all(
                    color: borderColor, width: 1.0) : null,
                image: DecorationImage(
                  image: AssetImage(
                    imgPath1
                  ),
                  fit: BoxFit.cover
                ),
              ),
            ),
          ),
          Positioned(
            left: 20,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.green,
                border: hasBorder ? Border.all(
                    color: borderColor, width: 1.0) : null,
                image: DecorationImage(
                    image: AssetImage(
                        imgPath2
                    ),
                    fit: BoxFit.cover
                ),
              ),
            ),
          ),
          Positioned(
            left: 40,
            child: Container(
              height: 40,
              width: 40,
              child: Center(
                child: Text(number),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: color,
                border: hasBorder ? Border.all(
                    color: borderColor, width: 1.0) : null,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
