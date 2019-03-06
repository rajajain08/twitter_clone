import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
