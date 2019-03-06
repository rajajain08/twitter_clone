import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
            NotificationTabAll(),
          ],
        ),
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

// class NotificationTabMentions extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Text("lol");
//   }
// }

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
