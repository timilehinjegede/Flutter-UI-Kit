import 'package:flutter/material.dart';
import 'package:travelservice/components/bottom_nav.dart';
import 'package:travelservice/components/discover_items.dart';
import 'package:travelservice/screens/detail_screen.dart';
import 'package:travelservice/utils/colors.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this, length: 5);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: buildBottomNav(),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.only(top: 25.0, left: 20.0, right: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: kGreen, width: 2.5),
                            image: DecorationImage(
                                image: AssetImage('images/avatar.jpeg')),
                            color: Colors.white),
                      ),
                      Container(
                        child: Stack(
                          children: <Widget>[
                            Icon(
                              Icons.notifications_none,
                              color: Colors.black54,
                              size: 30.0,
                            ),
                            Positioned(
                              left: 15,
                              top: 5,
                              child: SizedBox(
                                height: 10,
                                width: 10,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4.5),
                                    color: kGreen,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Discover',
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        'Show All',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  buildSelections(),
                  SizedBox(
                    height: 35.0,
                  ),
                  Text(
                    'Adventure',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.0),
                    child: TabBar(
                      isScrollable: true,
                      controller: _tabController,
                      indicatorColor: Colors.transparent,
                      unselectedLabelColor: Colors.grey[500],
                      labelColor: kGreen,
                      labelStyle: TextStyle(
                        fontSize: 30.0,
                      ),
                      unselectedLabelStyle: TextStyle(fontSize: 30.0),
                      tabs: <Widget>[
                        Tab(
                          child: Text(
                            'Experiences',
                            style: TextStyle(
                              fontSize: 19,
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Places',
                            style: TextStyle(
                              fontSize: 19,
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Inspiration',
                            style: TextStyle(
                              fontSize: 19,
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Restaurants',
                            style: TextStyle(
                              fontSize: 19,
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Beach',
                            style: TextStyle(
                              fontSize: 19,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 320,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        _buildCard(
                            'Kerela Village', 'India', 'images/place2.jpg'),
                        SizedBox(
                          width: 25,
                        ),
                        _buildCard(
                            'Melbourne', 'Australia', 'images/place1.jpg'),
                        SizedBox(
                          width: 25,
                        ),
                        _buildCard('Ikoyi', 'Lagos', 'images/place0.jpg'),
                        SizedBox(
                          width: 25,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(String name, String location, String image) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => DetailScreen()));
      },
      child: Container(
        height: 320,
        width: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: kGreen,
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 260,
              left: 15,
              child: Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            Positioned(
              top: 280,
              left: 15,
              child: Text(
                location,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
