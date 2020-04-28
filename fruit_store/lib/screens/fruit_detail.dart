import 'package:flutter/material.dart';
import 'package:fruitstore/utils/colors.dart';
import 'package:fruitstore/widgets/dot_indicator.dart';

class FruitDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.firstCardColor,
      body: Column(
        children: <Widget>[
          // ========== BUILD FRUIT IMAGE HERE ==========
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 50),
            height: MediaQuery.of(context).size.height * 0.45,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Icon(
                        Icons.keyboard_arrow_left,
                        size: 30,
                      ),
                    ),
                    Icon(Icons.more_vert)
                  ],
                ),
                Image(
                  height: MediaQuery.of(context).size.height * 0.35,
                  image: AssetImage('images/fruit1.png'),
                ),
              ],
            ),
          ),

          // ========== BUILD FRUIT DETAILS HERE ==========
          Container(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            height: MediaQuery.of(context).size.height * 0.55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
              color: Colors.white,
            ),
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 20),
                    Text(
                      'Durian Mon Tong',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'King of Fruits',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      '1.5 - 2.5 kg',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 40),
                    Row(
                      children: <Widget>[
                        // ===== BUILD DOTS =====
                        DotIndicator(),

                        // BUILD FRUIT PRICE
                        Text(
                          'E49,54',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      height: 80,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          Image(
                            height: 60,
                            width: 60,
                            image: AssetImage(
                              'images/thailand.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                          SizedBox(width: 15),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Thailand Origin',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Nutrition and variety',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Icon(
                            Icons.keyboard_arrow_down,
                            size: 30,
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 40),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.bkColor,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'Add to cart',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.black,
                                      ),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Center(
                                    child: Icon(
                                      Icons.add,
                                      size: 18,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.grey,
                              width: 0.5,
                            ),
                          ),
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.grey,
                            size: 28,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
