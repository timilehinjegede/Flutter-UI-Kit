import 'package:flutter/material.dart';
import 'package:travelservice/utils/colors.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height - 420,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'images/place2.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 465,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40)),
                  color: Colors.white),
              child: Container(
                padding:
                    EdgeInsets.only(top: 35, left: 25, right: 25, bottom: 17),
                height: 440,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Kerela Village',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              '\$150',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: kGreen,
                                  fontSize: 23),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'India',
                              style: TextStyle(color: kGreen, fontSize: 18),
                            ),
                            Text(
                              'Rating 4.5',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'People',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'number of people in this group',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        _buildBox('1', true),
                        _buildBox('2', false),
                        _buildBox('3', false),
                        _buildBox('4', false),
                        _buildBox('5', false),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Date',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '02 Feb - 05 Feb',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Kerala, a state on India\'s tropical Malabar Coast has nearly 600km of Arabian Sea Shoreline. It\'s known for its palm-lined beaches.',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: kLightGreen),
                          child: Center(
                            child: Icon(
                              Icons.favorite,
                              color: kGreen,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width - 125,
                          decoration: BoxDecoration(
                            color: kGreen,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              'Book My Trip Now',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 16,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBox(String number, bool isActive) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isActive ? kGreen : kLightGreen),
      child: Center(
        child: Text(
          number,
          style: TextStyle(
              color: isActive ? Colors.white : Colors.black87,
              fontWeight: FontWeight.w400,
              fontSize: 20),
        ),
      ),
    );
  }
}
