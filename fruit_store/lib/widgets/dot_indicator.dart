import 'package:flutter/material.dart';
import 'package:fruitstore/utils/colors.dart';

class DotIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            height: 2.5,
            width: 2.5,
            color: Colors.grey,
          ),
          Container(
            height: 2.5,
            width: 2.5,
            color: Colors.grey,
          ),
          Container(
            height: 2.5,
            width: 2.5,
            color: Colors.grey,
          ),

          Container(
            height: 2.5,
            width: 2.5,
            color: Colors.grey,
          ),

          // BIG CIRCLE
          Container(
            height: 22,
            width: 22,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
              color: AppColors.bkColor,
            ),
          ),

          Container(
            height: 2.5,
            width: 2.5,
            color: Colors.grey,
          ),

          Container(
            height: 2.5,
            width: 2.5,
            color: Colors.grey,
          ),

          Container(
            height: 2.5,
            width: 2.5,
            color: Colors.grey,
          ),

          Container(
            height: 2.5,
            width: 2.5,
            color: Colors.grey,
          ),

          Container(
            height: 2.5,
            width: 2.5,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}