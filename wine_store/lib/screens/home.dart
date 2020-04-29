import 'package:flutter/material.dart';
import 'package:winestore/screens/all_wines.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.local_drink,
              ),
              title: Text('')),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              title: Text('')),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.card_travel,
              ),
              title: Text('')),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
              ),
              title: Text('')),
        ],
      ),
      body: AllWineScreen(),
    );
  }
}
