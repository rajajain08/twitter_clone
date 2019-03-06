import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twitter_clone/screens/home_page.dart';
import 'package:twitter_clone/screens/message.dart';
import 'package:twitter_clone/screens/notifications.dart';
import 'package:twitter_clone/screens/search.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twitter Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final _widgetOptions = [
    Home(),
    Search(),
    Notifications(),
    Message(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: CupertinoTabBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
            Icons.home,
          )),
          BottomNavigationBarItem(
              icon: Icon(
            Icons.search,
          )),
          BottomNavigationBarItem(
              icon: Icon(
            Icons.notifications,
          )),
          BottomNavigationBarItem(
              icon: Icon(
            Icons.message,
          )),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
