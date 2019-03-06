import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
