import 'package:flutter/material.dart';
import 'package:winestore/styles/colors.dart';
import 'package:winestore/styles/text_style.dart';
import 'package:winestore/utils/images.dart';
import 'package:winestore/utils/resolution.dart';

class WineDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kPink,
      appBar: AppBar(
        backgroundColor: AppColors.kPink,
        elevation: 0,
        title: Text(
          'The good choice',
          style: textStyle(size: 15),
        ),
        leading: Icon(
          Icons.arrow_back,
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            width: screenWidth(context),
            height: screenHeight(context, percent: 0.4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Vicente Gandia\nNebla Roble'),
                Container(
                  height: 60,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.kWhite,
                  ),
                  child: Center(
                    child: Text(
                      '975 F'
                    ),
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: screenWidth(context),
              height: screenHeight(context, percent: 0.6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
                color: AppColors.kWhite,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Vol'),
                          Text('0.75 ml'),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Alc.'),
                          Text('13.5%'),
                        ],
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Grape'),
                      Text('Tempranilho, 2015'),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Region'),
                      Text('Spain, Ribera del\nDuero'),
                    ],
                  ),
                  Text(''),
                  Container(
                    height: 55,
                    width: screenWidth(context),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        'Add to cart',
                        style: textStyle(color: AppColors.kWhite),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 130,
            child: Image(
              image: AppImages.wine0,
              height: 450,
              width: 300,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
