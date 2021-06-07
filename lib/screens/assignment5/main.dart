import 'package:carousel_slider/carousel_slider.dart';
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
          body: CarouselSlider(
            options: CarouselOptions(
              height: 600,
              enableInfiniteScroll: false,
              scrollDirection: Axis.horizontal,
            ),
            items: [
              Column(
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 40.0, bottom: 40),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(3),
                        child: Image.network(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/0/02/Circle-icons-computer.svg/1200px-Circle-icons-computer.svg.png',
                          height: 300,
                          width: 300,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'API Routes',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              Column(
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 40.0, bottom: 40),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(3),
                        child: Image.network(
                          'https://static.thenounproject.com/png/2479489-200.png',
                          height: 300,
                          width: 300,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'In this assignment, we implemented screen navigation and API routes.',
                  ),
                ],
              ),
              SingleChildScrollView(
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
                      )))
            ],
          ),
        ));
  }
}

/*



 */
