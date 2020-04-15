import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:gamestreaming/components/game.dart';
import 'package:gamestreaming/components/streamers.dart';
import 'package:gamestreaming/components/video.dart';
import 'package:gamestreaming/screens/profile.dart';
import 'package:gamestreaming/utils/colors.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    ProfileScreen()));
                      },
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/avatar.jpeg'),
                          ),
                          borderRadius: BorderRadius.circular(35 / 2),
                          border: Border.all(color: Colors.grey[100], width: 1),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.menu,
                      size: 25,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(left: 25.0, right: 15.0),
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey[200],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('Search games...',
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
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey[200],
                      ),
                      child: Icon(
                        Icons.filter_list,
                        color: Colors.black87,
                        size: 25,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Recommended games',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      RecommendedGame(
                        name: 'Overwatch',
                        views: '45,967',
                        color: overWatchBg,
                        imagePath: 'images/overwatch4.png',
                        height: 200,
                        left: 20,
                        bottom: 15,
                      ),
                      SizedBox(width: 15,),
                      RecommendedGame(
                        name: 'Apex Legends',
                        views: '31,632',
                        color: apexLegendBg,
                        imagePath: 'images/al2.png',
                        height: 160,
                        left: 60,
                        bottom: 42,
                      ),
                      SizedBox(width: 15,),
                      RecommendedGame(
                        name: 'Cyberspace',
                        views: '13,933',
                        color: cyberSpaceBg,
                        imagePath: 'images/overwatch2.png',
                        height: 175,
                        left: 45,
                        bottom: 35,
                      ),
                      SizedBox(width: 15,),
                      RecommendedGame(
                        name: 'HunterKillar',
                        views: '4,003',
                        color: Colors.blue[600],
                        imagePath: 'images/al3.png',
                        height: 150,
                        left: 65,
                        bottom: 45,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Popular streamers',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 60,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      PopularStreamers(
                        name: 'Jacob Adams',
                        followers: '872k',
                        color: Colors.orangeAccent[100],
                        imagePath: 'images/aviT0.png',
                      ),
                      SizedBox(width: 25,),
                      PopularStreamers(
                        name: 'David Parker',
                        followers: '532k',
                        color: Colors.orangeAccent[200],
                        imagePath: 'images/aviT1.png',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      SizedBox(
                        width: 20,
                      ),
                      GameVideoComponent('images/stream0.jpg'),
                      SizedBox(width: 20,),
                      GameVideoComponent('images/stream1.jpg'),
                      SizedBox(width: 20,),
                      GameVideoComponent('images/stream3.jpg'),
                      SizedBox(
                        width: 20,
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
}
