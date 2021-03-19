import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tal/screens/SignIn.dart';

class MyHomepage extends StatefulWidget {
  MyHomepage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyHomepageState createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CircleAvatar(
                    child: Icon(
                      Icons.person,
                    ),
                    radius: 50,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text('Name: Talcia'),
                      Text('Username: Tana'),
                      Text('Status: Online'),
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                Navigator.of(context).pushReplacement(new CupertinoPageRoute(
                    builder: (BuildContext context) => new SignIn()));
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => (ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('Yay! A SnackBar!')))),
          child: Text('Log Out'),
        ),
      ),
    );
  }
}
