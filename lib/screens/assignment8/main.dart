import 'package:flutter/material.dart';
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
        body: Center(
          child: Text('Assignment #8'),
        ));
  }
}