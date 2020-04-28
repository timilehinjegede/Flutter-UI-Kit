import 'package:flutter/material.dart';

class CartItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Container(
        height: 80,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _cartItem('images/ci1.png', 'x2'),
            SizedBox(
              width: 10,
            ),
            _cartItem('images/ci2.png', 'x3'),
            SizedBox(
              width: 10,
            ),
            _cartItem('images/ci1.png', 'x2'),
            Spacer(),
            Text(
              'E49,54',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              width: 3,
            ),
            Icon(Icons.keyboard_arrow_down)
          ],
        ),
      ),
    );
  }

  Widget _cartItem(String imgPath, String quantity) {
    return ClipOval(
      child: Container(
        height: 50,
        width: 50,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Image(
              height: 35,
              width: 35,
              image: AssetImage(imgPath),
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 10,
                ),
                child: Text(
                  quantity,
                  style: TextStyle(
                    fontSize: 11,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
