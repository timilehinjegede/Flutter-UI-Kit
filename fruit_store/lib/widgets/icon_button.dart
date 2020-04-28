import 'package:flutter/material.dart';

class MyIconButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: Colors.orange[300],
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // ===== BUILD ICON BUTTON =====
          Container(
            height: 2,
            width: 20,
            color: Colors.black38,
          ),
          SizedBox(
            height: 3,
          ),
          Container(
            height: 2,
            width: 15,
            color: Colors.black38,
          ),
          SizedBox(
            height: 3,
          ),
          Container(
            height: 2,
            width: 20,
            color: Colors.black38,
          ),
        ],
      ),
    );
  }
}
