import 'package:flutter/material.dart';

class FruitDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[200],
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
                    Icon(Icons.keyboard_arrow_left),
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
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: MediaQuery.of(context).size.height * 0.55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Durian Mon Tong'),
                Text('King of Fruits'),
                Text('1.5 - 2.5 kg'),
                SizedBox(height: 30),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(),
                    ),
                    Text('E49,54')
                  ],
                ),
                SizedBox(height: 30),
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
                          Text('Thailand Origin'),
                          Text('Nutrition and variety'),
                        ],
                      ),
                      Spacer(),
                      Icon(Icons.keyboard_arrow_down)
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        height: 55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.yellow[400]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('Add to cart'),
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
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 55,
                      height: 55,
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
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
