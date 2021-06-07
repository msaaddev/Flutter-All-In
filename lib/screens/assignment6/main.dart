import 'package:flutter/material.dart';
import 'package:assignment9/screens/assignment6/screens/home.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:assignment9/widgets/Drawer.dart';

class Assignment6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gallery & REST API Integration',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Camera, Gallery & REST API Integration'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerW(),
      appBar: AppBar(
        title: Text(widget.title),
      ),
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
                'Image Picker & Cropper',
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
                'In this assignment, we integrated camera and gallery feature and used REST API to send the image',
              ),
            ],
          ),
          Home()
        ],
      ),
    );
  }
}
