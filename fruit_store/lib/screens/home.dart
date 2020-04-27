import 'package:flutter/material.dart';
import 'package:fruitstore/screens/fruit_detail.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[300],
      body: Column(
        children: <Widget>[
          // ========== BUILD THE MAIN CONTENT OF THE SCREEN ==========
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(26),
                  bottomRight: Radius.circular(26),
                ),
              ),
              child: ListView(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // ========== BUILD HEADING HERE ==========
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Exotic Fruits',
                                  style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'More than 70 exotic fruits',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),

                            // ========== BUILD ICON BUTTON ==========
                            Container(
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
                            )
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 25,
                      ),

                      // ========== BUILD CARD SLIDE HERE ==========
                      Container(
                        padding: EdgeInsets.only(
                          left: 20,
                        ),
                        height: 250,
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
                                        FruitDetailScreen(),
                                  ),
                                );
                              },
                              child: _buildFruitCard('Durian Mon\nTong',
                                  'E19.99', 'images/fruit1.png'),
                            ),
                            SizedBox(width: 20),
                            _buildFruitCard('Hawaiian\nPapaya', 'E4.55',
                                'images/fruit2.png'),
                            SizedBox(width: 20),
                            _buildFruitCard('Durian Mon\nTong', 'E19.99',
                                'images/fruit1.png'),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 20,
                      ),

                      // ========== BUILD MARKETS HERE ==========
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          'Markets',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          '7+ markets near you',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 20,
                      ),

                      // ========== BUILD MARKET LIST HERE ==========
                      _buildMarket('Brooklyn Fruit Valley', '09:00 - 21:00',
                          '4.9', '2 km', 'images/market1.jpg'),
                      SizedBox(
                        height: 20,
                      ),
                      _buildMarket('24/7 Fruit Market', '00:00 - 24:00', '4.9',
                          '3 km', 'images/market2.jpg'),
                      SizedBox(
                        height: 20,
                      ),
                      _buildMarket('Brooklyn Fruit Valley', '09:00 - 21:00',
                          '4.9', '2 km', 'images/market1.jpg'),
                      SizedBox(
                        height: 20,
                      ),
                      _buildMarket('24/7 Fruit Market', '00:00 - 24:00', '4.9',
                          '3 km', 'images/market3.jpg'),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // ========== BUILD THE CART ITEMS INDICATOR ==========
          Padding(
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
          ),
        ],
      ),
    );
  }

  Widget _buildFruitCard(String name, String price, String imgPath) {
    return Container(
      height: 250,
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.orangeAccent[200],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Image(
              height: 150,
              width: 150,
              image: AssetImage(imgPath),
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
            ),
            child: Text(
              name,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
              bottom: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  price,
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                      fontWeight: FontWeight.w700),
                ),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Icon(
                      Icons.add,
                      size: 16,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildMarket(String name, String time, String rating, String distance,
      String imgPath) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 80,
        child: Row(
          children: <Widget>[
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  image: DecorationImage(
                    image: AssetImage(imgPath),
                    fit: BoxFit.cover,
                  )),
            ),
            SizedBox(
              width: 20,
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 7,
                bottom: 7,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    time,
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                        fontWeight: FontWeight.w600),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.star, size: 10, color: Colors.red),
                      Text(
                        rating,
                        style: TextStyle(fontSize: 12, color: Colors.red),
                      ),
                      SizedBox(width: 10),
                      Container(width: 1, height: 10, color: Colors.red),
                      SizedBox(width: 10),
                      Icon(Icons.location_on, size: 10, color: Colors.red),
                      Text(
                        distance,
                        style: TextStyle(fontSize: 12, color: Colors.red),
                      ),
                    ],
                  )
                ],
              ),
            )
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
