import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:assignment9/widgets/Drawer.dart';

class Assignment3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Card Assignment',
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerW(),
      appBar: AppBar(title: Text('Assignment #3')),
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 3,
            child: Container(
              width: 400,
              height: 320,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    stops: [
                      0.1,
                      0.4,
                      0.6,
                      0.9,
                    ],
                    colors: [
                      Colors.blue[300],
                      Colors.blue[400],
                      Colors.blue,
                      Colors.blueAccent[700],
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueAccent[700],
                      blurRadius: 20.0,
                      spreadRadius: 1.0,
                    )
                  ]),
              child: Center(
                  child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(80))),
                child: Icon(
                  Icons.emoji_people,
                  size: 70,
                ),
              )),
            ),
          ),
          Positioned(
            bottom: 40,
            child: Card(
              child: Container(
                height: 450,
                width: 300,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      // margin: EdgeInsets.only(top: 10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(3),
                        child: Image.network(
                          'https://i.imgur.com/ZLhqyQK.jpg',
                          height: 300,
                          width: 300,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 23.0),
                      child: Text(
                        'Saad',
                        style: TextStyle(
                          fontSize: 36,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15.0),
                      width: 250,
                      child: ElevatedButton(
                        child: Text(
                          'Get More Info',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blueAccent[700],
                            onPrimary: Colors.white,
                            elevation: 3,
                            shadowColor: Colors.blueAccent),
                        onPressed: () async {
                          return showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return CupertinoAlertDialog(
                                title: Text('Information',
                                    style: TextStyle(
                                      fontSize: 36,
                                    )),
                                content: Text('Lorem Ipsum'),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text('Close'))
                                ],
                              );
                            },
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
