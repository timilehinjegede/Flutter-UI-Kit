import 'package:flutter/material.dart';

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
                                Text('Exotic Fruits'),
                                Text('More than 70 exotic fruits'),
                              ],
                            ),

                            // ========== BUILD ICON BUTTON ==========
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.orange[300],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                children: <Widget>[],
                              ),
                            )
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 20,
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
                            _buildFruitCard(),
                            SizedBox(width: 20),
                            _buildFruitCard(),
                            SizedBox(width: 20),
                            _buildFruitCard(),
                          ],
                        ),
                      ),

                      // ========== BUILD MARKETS HERE ==========
                      Text('Markets'),
                      Text('7+ markets near you'),

                      SizedBox(
                        height: 20,
                      ),

                      // ========== BUILD MARKET LIST HERE ==========
                      _buildMarket(),
                      SizedBox(
                        height: 20,
                      ),
                      _buildMarket(),
                      SizedBox(
                        height: 20,
                      ),
                      _buildMarket(),
                      SizedBox(
                        height: 20,
                      ),
                      _buildMarket(),
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
                  _cartItem(),
                  SizedBox(
                    width: 10,
                  ),
                  _cartItem(),
                  SizedBox(
                    width: 10,
                  ),
                  _cartItem(),
                  Spacer(),
                  Text('E49,54'),
                  SizedBox(
                    width: 2,
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

  Widget _buildFruitCard() {
    return Container(
      height: 250,
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.deepPurple,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Image(
              height: 150,
              width: 150,
              image: AssetImage('images/fruit1.png'),
              fit: BoxFit.cover,
            ),
          ),
          Text('Durian Mon\nTong'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('E19.99'),
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
          )
        ],
      ),
    );
  }

  Widget _buildMarket() {
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
                    image: AssetImage('images/market3.jpg'),
                    fit: BoxFit.cover,
                  )),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Brooklyn Fruit Valley'),
                Text('09:00 - 21:00'),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.star,
                      size: 10,
                    ),
                    Text('4.9'),
                    SizedBox(width: 10),
                    Container(
                      width: 1,
                      height: 10,
                      color: Colors.black,
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.location_on,
                      size: 10,
                    ),
                    Text('2 km'),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _cartItem() {
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
              image: AssetImage('images/ci2.png'),
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 10,
                ),
                child: Text(
                  'x2',
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
