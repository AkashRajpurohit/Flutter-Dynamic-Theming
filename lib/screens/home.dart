import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dynamic Theming"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Akash Rajpurohit",
              style: TextStyle(
                fontSize: 22.0,
                letterSpacing: 2.0
              ),
            ),
          ],
        ),
      ),
    );
  }
}