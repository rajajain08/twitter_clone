import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

class Message extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        elevation: 2.0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipOval(child: Image.asset('assets/kurt.jpg')),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Message",
              style: TextStyle(color: Colors.black),
            ),
            Icon(
              Icons.star,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        elevation: 2.0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipOval(child: Image.asset('assets/kurt.jpg')),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Notification",
              style: TextStyle(color: Colors.black),
            ),
            Icon(
              Icons.star,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        elevation: 2.0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: EdgeInsets.all(8.0),
          child: ClipOval(child: Image.asset('assets/kurt.jpg')),
        ),
        title: Row(
          children: <Widget>[
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey,
                  contentPadding: EdgeInsets.all(8),
                  border: new OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(60.0),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                FontAwesomeIcons.userPlus,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        elevation: 2.0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipOval(child: Image.asset('assets/kurt.jpg')),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Home",
              style: TextStyle(color: Colors.black),
            ),
            Icon(
              Icons.star,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
