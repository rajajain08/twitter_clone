import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
