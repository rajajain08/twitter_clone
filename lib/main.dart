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
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("ho gya?");
          },
          child: Icon(FontAwesomeIcons.inbox),
        ),
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
        body: ListView(
          children: <Widget>[
            MessageCards(),
            Divider(),
            MessageCards(),
            Divider(),
            MessageCards(),
            Divider(),
            MessageCards(),
            Divider(),
            MessageCards(),
            Divider(),
            MessageCards(),
            Divider(),
            MessageCards(),
            Divider(),
            MessageCards(),
            Divider()
          ],
        ));
  }
}

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("ho gya?");
          },
          child: Icon(FontAwesomeIcons.feather),
        ),
        appBar: AppBar(
          bottom: TabBar(
            labelColor: Colors.blue,
            tabs: [
              Tab(
                text: "All",
              ),
              Tab(text: "Mentions"),
            ],
          ),
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
        body: TabBarView(
          children: [
            NotificationTabAll(),
            NotificationTabMentions(),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("ho gya?");
        },
        child: Icon(FontAwesomeIcons.feather),
      ),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("ho gya?");
        },
        child: Icon(FontAwesomeIcons.feather),
      ),
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
      body: ListView(
        children: <Widget>[
          HomePageCard(),
          Divider(),
          HomePageCard(),
          Divider(),
          HomePageCard(),
          Divider(),
          HomePageCard()
        ],
      ),
    );
  }
}

class NotificationTabAll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        NotificationAllCard(),
        Divider(),
        NotificationAllCard(),
        Divider(),
        NotificationAllCard(),
        Divider(),
        NotificationAllCard(),
        Divider(),
        NotificationAllCard(),
        Divider(),
        NotificationAllCard(),
        Divider(),
        NotificationAllCard(),
      ],
    );
  }
}

class NotificationTabMentions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("lol");
  }
}

class HomePageCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
          height: 50, child: ClipOval(child: Image.asset('assets/kurt.jpg'))),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                "Ramlaal Jackson",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              Text(" @ramukaka • 11h "),
            ],
          ),
          Icon(Icons.arrow_drop_down),
        ],
      ),
      subtitle: Column(children: <Widget>[
        Text(
          "This is a tweet posted by Ramlaal Jackson ,This is a tweet posted by Ramlaal Jackson .",
          style: TextStyle(color: Colors.black),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 200,
            width: 320,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
              image: DecorationImage(
                  image: ExactAssetImage('assets/kurt.jpg'), fit: BoxFit.fill),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.comment,
                    size: 18,
                    color: Colors.grey[600],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("12"),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.retweet,
                    size: 18,
                    color: Colors.grey[600],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("12"),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.heart,
                    size: 18,
                    color: Colors.grey[600],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("12"),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.share,
                    size: 18,
                    color: Colors.grey[600],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("12"),
                  ),
                ],
              ),
            ),
          ],
        )
      ]),
    );
  }
}

class NotificationAllCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 38.0, top: 6),
          child: Icon(
            Icons.star,
            color: Colors.purple,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                      height: 35,
                      child: ClipOval(child: Image.asset('assets/kurt.jpg'))),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                      height: 35,
                      child: ClipOval(child: Image.asset('assets/kurt.jpg'))),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  "Ramnath",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(" liked a photo")
              ],
            )
          ],
        ),
      ],
    );
  }
}

class MessageCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 50,
        child: ClipOval(
          child: Image.asset('assets/kurt.jpg'),
        ),
      ),
      title:
          Text("Krishn Halwae", style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text("@ladduwala"),
    );
  }
}
