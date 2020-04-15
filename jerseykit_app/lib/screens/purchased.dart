import 'package:flutter/material.dart';

class PurchaseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/pogba.jpg'), fit: BoxFit.cover),
            ),
          ),
          Positioned(
            top: 40,
            left: 15,
            child: GestureDetector(
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 22,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(12),topLeft: Radius.circular(12)),
                  color: Color.fromRGBO(15, 15, 15, 1)
              ),
              height: 255,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Manchester United',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Home kit 2019/2020',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '#45,000',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only( right: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Size',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Expanded(
                          child: Container(
                            height: 110,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: Color.fromRGBO(10, 10, 10, 1)),
                                      child: Center(
                                        child: Text(
                                          'S',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        color: Color.fromRGBO(255, 54, 54, 1),                                      )
                                      ,
                                      child: Center(
                                        child: Text(
                                          'M',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: Color.fromRGBO(10, 10, 10, 1)),
                                      child: Center(
                                        child: Text(
                                          'L',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: Color.fromRGBO(10, 10, 10, 1)),
                                      child: Center(
                                        child: Text(
                                          'XL',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: Color.fromRGBO(10, 10, 10, 1)),
                                      child: Center(
                                        child: Text(
                                          'XXL',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    //Invisibe container
                                    Container(
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: Colors.transparent
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 55,
                        ),
                        Container(
                          height: 110,
                          width: 75,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                            color: Color.fromRGBO(255, 54, 54, 1),                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Add',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Icon(
                                Icons.shopping_basket,
                                color: Colors.white,
                                size: 30,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
