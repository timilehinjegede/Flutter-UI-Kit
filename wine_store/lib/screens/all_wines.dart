import 'package:flutter/material.dart';
import 'package:winestore/screens/wine_detail.dart';
import 'package:winestore/styles/colors.dart';
import 'package:winestore/styles/text_style.dart';
import 'package:winestore/utils/images.dart';
import 'package:winestore/utils/margin.dart';
import 'package:winestore/utils/resolution.dart';

class AllWineScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: ListView(
          children: [
            Column(
              children: <Widget>[
                Container(
                  height: 280,
                  width: screenWidth(context),
                  child: Stack(
                    children: <Widget>[
                      Text(
                        'The good\nchoice',
                        style: textStyle(
                          size: 30,
                          weight: 6,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    WineDetailScreen(),
                              ),
                            );
                          },
                          child: Container(
                            height: 180,
                            width: screenWidth(context),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.kPink,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Vicente Gandia\nNebla Roble'),
                                Text('Italy 13.5%'),
                                Container(
                                  height: 60,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: AppColors.kWhite,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 150,
                        child: Image(
                          image: AppImages.wine0,
                          height: 250,
                          width: 250,
                        ),
                      )
                    ],
                  ),
                ),
                YMargin(40),
                // ===== BUILD LAST ORDERS HERE =====
                Row(
                  children: <Widget>[
                    Text('Last Orders'),
                    Spacer(),
                    Text(
                      'View all',
                    ),
                    Icon(
                      Icons.arrow_forward,
                    ),
                  ],
                ),

                // ===== BUILD WINE SLIDE HERE =====
                Container(
                  height: 300,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      _buildOrderCard(),
                      XMargin(15),
                      _buildOrderCard(),
                      XMargin(15),
                      _buildOrderCard(),
                      XMargin(15),
                      _buildOrderCard(),
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

  Widget _buildOrderCard() {
    return Container(
      width: 150,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: AppColors.kOrange,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Image(
              image: AppImages.wine1,
              height: 250,
              width: 250,
            ),
          ),
          Positioned(
            top: 250,
            child: Text(
              'Timi Tejeuebfef',
            ),
          ),
          Positioned(
            top: 280,
            child: Text('620 F'),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25 / 2),
                color: AppColors.kBlack,
              ),
              child: Center(
                  child: Icon(
                Icons.add,
                color: AppColors.kWhite,
                size: 16,
              )),
            ),
          ),
        ],
      ),
    );
  }
}
