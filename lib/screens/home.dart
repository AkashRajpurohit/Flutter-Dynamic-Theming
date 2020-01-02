import 'package:dynamic_theme/services/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    ThemeChanger _themeChanger = Provider.of<ThemeChanger>(context);

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
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Dark Mode",
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                Checkbox(
                  value: isChecked,
                  onChanged: (bool value) {
                    setState(() {
                      isChecked = value;
                    });

                    // Toggle Theme based on the checkbox current value
                    if(isChecked) {
                      _themeChanger.setTheme(ThemeData.dark());
                    } else {
                      _themeChanger.setTheme(ThemeData.light());
                    }
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}