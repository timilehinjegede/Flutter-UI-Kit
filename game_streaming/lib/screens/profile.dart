import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gamestreaming/components/profile_level_up.dart';
import 'package:gamestreaming/components/stacked_avatars.dart';
import 'package:gamestreaming/utils/colors.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: kPurple,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'You\'re playing Destiny 2',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  StackedAvatars(
                    imgPath1: 'images/avi0.jpeg',
                    imgPath2: 'images/avi3.jpg',
                    color: Colors.grey[200],
                    hasBorder: true,
                    number: '+5',
                    borderColor: kPurple,
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            height: MediaQuery.of(context).size.height - 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40),
                  bottomLeft: Radius.circular(40)),
              color: Colors.white,
            ),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: 22,
                            color: Colors.black87,
                          ),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                        Icon(
                          Icons.menu,
                          size: 25,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: <Widget>[
                      ProfileLevelUp(),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Timilehin Jegede', style:
                                TextStyle(
                                  color: Colors.black87,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                'Level 45',
                                style: TextStyle(
                                  color: Colors.red,
                                ),
                              )
                            ],
                          ),
                        ),
                        Stack(
                          children: <Widget>[
                            Image(
                              height: 25,
                              width: 25,
                              image: AssetImage('images/bell.png'),
                            ),
                            Positioned(
                              top: 2,
                              left: 13,
                              child: Container(
                                height: 8,
                                width: 8,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Image(
                          height: 25,
                          width: 25,
                          image: AssetImage('images/shopping-cart.png'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 25.0, right: 15.0),
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey[100],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Find friends...',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                          ),
                          Image(
                            height: 20,
                            width: 20,
                            image: AssetImage('images/magnifying-glass.png'),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: <Widget>[
                        Text('My teams',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 16
                        ),
                        ),
                        Container(
                          child: Icon(
                            Icons.keyboard_arrow_down,
                            size: 20,
                          ),
                          padding: EdgeInsets.only(top: 3),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: destinyBg,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'D',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'e',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Team Chat',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text('Destiny 2',
                                  style: TextStyle(
                                      color: gameTextColor,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                          ),
                          StackedAvatars(
                            imgPath1: 'images/avi0.jpeg',
                            imgPath2: 'images/avi1.jpeg',
                            color: Colors.grey[200],
                            hasBorder: true,
                            number: '+8',
                            borderColor: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    _buildTeams('BattlefieldV', battleFieldBg),
                    SizedBox(
                      height: 20,
                    ),
                    _buildTeams('Apex Legends', apexBg),
                    SizedBox(
                      height: 20,
                    ),
                    _buildTeams('Dota 2', dotaBg),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      width: 140,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border: Border.all(color: Colors.black, width: 1.0)),
                      child: Center(
                        child: Text(
                          'New chat',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTeams(String name, Color color) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                name[0],
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 23,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Team Chat',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 5,),
                Text(name,
                style: TextStyle(
                  color: gameTextColor,
                  fontWeight: FontWeight.bold
                ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.more_vert,
            size: 30,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
