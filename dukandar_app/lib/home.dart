import 'package:dukandarapp/detail.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ===== BUILD BOTTOM NAVIGATION BAR =====
      bottomNavigationBar: _buildBottomNav(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // ====== BUILD HEADING =====
                Row(
                  children: <Widget>[
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage('images/avatar.jpeg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.favorite_border,
                      size: 20,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Stack(
                      children: [
                        Icon(
                          Icons.shopping_cart,
                          size: 20,
                          color: Colors.black,
                        ),
                        Positioned(
                          left: 10,
                          top: 0,
                          child: Container(
                            height: 8,
                            width: 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.green,
                            ),
                            child: Center(
                              child: Text(
                                '2',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 6,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(
                  height: 40,
                ),

                // ====== BUILD GREETING =====
                Text(
                  'Welcome Back',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
                Text(
                  'Nancy Thompson!',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                SizedBox(
                  height: 25,
                ),

                // ===== BUILD SEARCH BAR =====
                Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 45,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.search,
                          color: Colors.grey,
                          size: 22,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Search',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 35,
                ),

                // ===== BUILD FRUITS SLIDE =====
                Container(
                  height: 25,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            'Fruits',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                          Container(
                            height: 2,
                            width: 42,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(2),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Vegetables',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Nuts & Seeds',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'General',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 15,
                ),

                // ===== BUILD CARDS =====
                Container(
                  height: 240,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      _buildFoodCard(
                        'Orange',
                        'Kinnow With Leaf & Stalk Per 500',
                        '40.0',
                        'images/orange0.png',
                        true,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => DetailScreen(),
                            ),
                          );
                        },
                        child: _buildFoodCard(
                          'Apples',
                          'KalaKulu Apple Per 500GM',
                          '75.0',
                          'images/apple0.png',
                          false,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      _buildFoodCard(
                        'Carrots',
                        'Farm Fried Carrot per 500',
                        '11.0',
                        'images/top3.png',
                        false,
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 40,
                ),

                // ===== BUILD HOT SALES =====
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'Hot Sales',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'View all ',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 10,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(
                  height: 15,
                ),

                // ===== BUILD HOT SALES CARDS =====
                Container(
                  height: 80,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      _buildHotDeals('images/top1.png', '110.0'),
                      SizedBox(
                        width: 15,
                      ),
                      _buildHotDeals('images/top2.png', '110.0'),
                      SizedBox(
                        width: 15,
                      ),
                      _buildHotDeals('images/top0.png', '110.0'),
                      SizedBox(
                        width: 15,
                      ),
                      _buildHotDeals('images/top3.png', '110.0'),
                      SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHotDeals(String imgPath, String price) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.grey[200]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(
            height: 50,
            width: 50,
            image: AssetImage(imgPath),
            fit: BoxFit.contain,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Re: $price/Kg',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildFoodCard(String name, String description, String price,
      String imgPath, bool isSelected) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      height: 240,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: isSelected ? Colors.orange[100] : Colors.grey[200],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey[200],
              ),
              child: Icon(
                Icons.add,
                size: 18,
              ),
            ),
          ),
          Image(
            height: 130,
            width: 150,
            image: AssetImage(imgPath),
            fit: BoxFit.contain,
          ),
          Text(
            '$name',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            '$description',
            style: TextStyle(
              fontSize: 8,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Rs. $price/Dos',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'View Details ',
                  style: TextStyle(fontSize: 8),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 8,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildBottomNav() {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(15),
        topLeft: Radius.circular(15),
      ),
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15),
            topLeft: Radius.circular(15),
          ),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              width: 85,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[200],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.home,
                    size: 20,
                    color: Colors.black87,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.shopping_basket,
              size: 20,
            ),
            SizedBox(
              width: 25,
            ),
            Icon(
              Icons.loyalty,
              size: 20,
            ),
            SizedBox(
              width: 25,
            ),
            Icon(
              Icons.menu,
              size: 20,
            )
          ],
        ),
      ),
    );
  }
}
