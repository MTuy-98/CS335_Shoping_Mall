import 'package:flutter/material.dart';

class ProductListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
            appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(
              Icons.close,
              size: 30.0,
            ),
            onPressed: () {
              //Navigate to homepage
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => HomePage()));
            },
          ),
        ],
      ),
    body: Center(
      child: Text('Check Out'),
    ),
    );
  }
}
