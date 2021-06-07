import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:assignment9/screens/assignment8/widgets/Drawer.dart';

class Assignment8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tabs',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tabs Assignment'),
      ),
      drawer: DrawerW(),
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
                'All buttons and Input Selection',
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
                'In this assignment, we implemented tabs where we further integrated all flutter buttons and Input Selection option',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
