import 'package:flutter/material.dart';
import 'package:jerseykitapp/components/club.dart';
import 'package:jerseykitapp/components/season.dart';
import 'package:jerseykitapp/screens/purchased.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(15, 15, 15, 1),
        padding: EdgeInsets.only(left: 15, right: 15, top: 10),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Stack(
                      children: [
                        Icon(
                          Icons.shopping_basket,
                          color: Colors.white,
                        ),
                        Positioned(
                          top: 14,
                          left: 14,
                          child: Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color.fromRGBO(255, 54, 54, 1),
                            ),
                            child: Center(
                              child: Text(
                                '2',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 6,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ],
                ),
                Text(
                  'Find your\nfavorite jersey kit',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.black,
                            border: Border.all(
                              color: Color.fromRGBO(10, 10, 10, 1),
                              width: 0.3,
                            )),
                        child: Container(
                          padding: EdgeInsets.only(top: 10, left: 9),
                          child: Text(
                            'Search your club',
                            style: TextStyle(
                              color: Colors.grey[300],
                              fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 40,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color.fromRGBO(255, 54, 54, 1),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 70,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      MyClubs(
                        imgPath: 'images/madrid0.png',
                        isSelected: false,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      MyClubs(
                        imgPath: 'images/machester0.png',
                        isSelected: true,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      MyClubs(
                        imgPath: 'images/juventus1.png',
                        isSelected: false,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      MyClubs(
                        imgPath: 'images/bayern0.png',
                        isSelected: false,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      MyClubs(
                        imgPath: 'images/barcelona0.png',
                        isSelected: false,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'This Season',
                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 270,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      PurchaseScreen()));
                        },
                        child: MySeason(
                          color: Color.fromRGBO(142, 22, 26, 1),
                          imgPath: 'images/home0.png',
                          isHome: true,
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      MySeason(
                        color: Color.fromRGBO(195, 180, 162, 1),
                        imgPath: 'images/away2.png',
                        isHome: false,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Others',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 180,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage('images/others2.jpg'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage('images/others0.jpg'),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
