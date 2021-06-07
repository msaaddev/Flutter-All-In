import 'package:flutter/material.dart';
import 'package:assignment9/screens/assignment1/main.dart';
import 'package:assignment9/screens/assignment2/main.dart';
import 'package:assignment9/screens/assignment3/main.dart';
import 'package:assignment9/screens/assignment4/main.dart';
import 'package:assignment9/screens/assignment5/main.dart';
import 'package:assignment9/screens/assignment6/main.dart';
import 'package:assignment9/screens/assignment7/main.dart';
import 'package:assignment9/screens/assignment8/main.dart';

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
        SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.arrow_forward_ios),
                title: Text('Assignment #1',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                    )),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Assignment1();
                  }));
                },
              ),
              ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text('Assignment #2',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                      )),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Assignment2();
                    }));
                  }),
              ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text('Assignment #3',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                      )),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Assignment3();
                    }));
                  }),
              ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text('Assignment #4',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                      )),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Assignment4();
                    }));
                  }),
              ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text('Assignment #5',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                      )),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Assignment5();
                    }));
                  }),
              ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text('Assignment #6',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                      )),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Assignment6();
                    }));
                  }),
              ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text('Assignment #7',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                      )),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Assignment7();
                    }));
                  }),
              ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text('Assignment #8',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                      )),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Assignment8();
                    }));
                  }),
            ],
          ),
        )
      ],
    ));
  }
}
