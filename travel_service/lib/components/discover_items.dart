import 'package:flutter/material.dart';

Widget buildSelections() {
  return Container(
    height: 75,
    width: double.infinity,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Column(
          children: <Widget>[
            Image(
              height: 40,
              width: 40,
              image: AssetImage('images/kayak.png'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Kayaking',
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
        SizedBox(
          width: 30,
        ),
        Column(
          children: <Widget>[
            Image(
              height: 40,
              width: 40,
              image: AssetImage('images/traveler.png'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Hiking',
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
        SizedBox(
          width: 30,
        ),
        Column(
          children: <Widget>[
            Image(
              height: 40,
              width: 40,
              image: AssetImage('images/bike.png'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Cycling',
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
        SizedBox(
          width: 30,
        ),
        Column(
          children: <Widget>[
            Image(
              height: 40,
              width: 40,
              image: AssetImage('images/snorkel.png'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Snokerling',
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
        SizedBox(
          width: 30,
        ),
        Column(
          children: <Widget>[
            Image(
              height: 40,
              width: 40,
              image: AssetImage('images/swim.png'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Swinmming',
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
        SizedBox(
          width: 30,
        ),
        Column(
          children: <Widget>[
            Image(
              height: 40,
              width: 40,
              image: AssetImage('images/bike.png'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Cycling',
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ],
    ),
  );
}
