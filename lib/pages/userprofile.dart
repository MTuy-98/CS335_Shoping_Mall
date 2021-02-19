import 'package:flutter/material.dart';
import 'package:shopping_mall/pages/auth.dart';

class UserProfile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _UserProfile();
  }
}

class _UserProfile extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    const edgeInsets = const EdgeInsets.all(8);
    return Scaffold(
        appBar: AppBar(title: Text('Account Profile'), actions: <Widget>[
          IconButton(icon: const Icon(Icons.login), onPressed: () {}),
          IconButton(
              icon: const Icon(Icons.app_registration),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AuthPage()),
                );
              })
        ]),
        body: ListView(
          padding: edgeInsets,
          children: <Widget>[
            Container(
              height: 120.0,
              width: 120.0,
              child: Align(
                alignment: Alignment.center,
                child: Image.asset('assets/userprofile.png'),
              ),
            ),
            Container(
              height: 50,
              color: Colors.lightBlue[100],
              child: Text('Username: john doe'),
              margin: new EdgeInsets.symmetric(vertical: 10),
            ),
            Container(
              height: 50,
              color: Colors.lightBlue[100],
              child: Text('Email: john.doe@gmail.com'),
              margin: new EdgeInsets.symmetric(vertical: 10),
            ),
            Container(
              height: 50,
              color: Colors.lightBlue[100],
              child: Text('Phone Number: +255 74545670'),
              margin: new EdgeInsets.symmetric(vertical: 10),
            ),
            Container(
              height: 50,
              color: Colors.lightBlue[100],
              child: Text('Account Type: SELLER'),
              margin: new EdgeInsets.symmetric(vertical: 10),
            ),
          ],
        ));
  }
}
