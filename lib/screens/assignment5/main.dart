import 'package:flutter/material.dart';
import 'package:assignment9/screens/assignment5/screens/AppDrawer.dart';

class Assignment5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Assignment 5',
        home: Scaffold(
            appBar: AppBar(title: Text('Mobile Application Development')),
            drawer: DrawerList(),
            body: SingleChildScrollView(
                child: ConstrainedBox(
                    constraints: BoxConstraints(),
                    child: Column(
                      children: [
                        Center(
                            child: Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.network(
                              'https://i.imgur.com/rG1TxNQ.png',
                              height: 150,
                              width: 150,
                            ),
                          ),
                        )),
                        Container(
                          width: 400,
                          child: Padding(
                            padding:
                                EdgeInsets.only(top: 40, left: 20, right: 20),
                            child: Text(
                                'Screen Navigation and Web API Integration Assignment',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Raleway',
                                  fontSize: 22,
                                )),
                          ),
                        )
                      ],
                    )))));
  }
}
