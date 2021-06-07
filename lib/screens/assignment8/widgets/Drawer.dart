import 'package:flutter/material.dart';
import 'package:assignment9/screens/assignment8/screens/FiveTab.dart';
import 'package:assignment9/screens/assignment8/screens/SixTab.dart';
import 'package:assignment9/main.dart';

class DrawerW extends StatefulWidget {
  @override
  _DrawerWState createState() => _DrawerWState();
}

class _DrawerWState extends State<DrawerW> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        Container(
          height: 180.0,
          child: DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(top: 60.0),
                    child: Text('Screen Drawer',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w700))),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.arrow_forward_ios),
          title: Text('Five Tab Screen',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              )),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return FiveTab();
            }));
          },
        ),
        ListTile(
            leading: Icon(Icons.arrow_forward_ios),
            title: Text('Six Tabs Screen',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                )),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SixTab();
              }));
            }),
        ListTile(
            leading: Icon(Icons.arrow_forward_ios),
            title: Text('Home',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                )),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return MyApp();
              }));
            }),
      ],
    ));
  }
}
