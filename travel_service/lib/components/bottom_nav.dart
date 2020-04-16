import 'package:flutter/material.dart';
import 'package:travelservice/utils/colors.dart';

Widget buildBottomNav() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(30, 25, 30, 25),
    child: Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 15,
                  left: 15,
                  child: SizedBox(
                    height: 14,
                    width: 14,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14 / 2),
                        color: kGreen,
                      ),
                    ),
                  ),
                ),
                Icon(
                  Icons.home,
                  size: 30.0,
                  color: Colors.black54,
                ),
              ],
            ),
          ),
          Container(
            child: Icon(
              Icons.search,
              size: 30.0,
              color: Colors.grey[400],
            ),
          ),
          Container(
            child: Icon(
              Icons.favorite_border,
              size: 30.0,
              color: Colors.grey[400],
            ),
          ),
          Container(
            child: Icon(
              Icons.send,
              size: 30.0,
              color: Colors.grey[400],
            ),
          ),
        ],
      ),
    ),
  );
}
