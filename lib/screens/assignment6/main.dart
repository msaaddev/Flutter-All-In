import 'package:flutter/material.dart';
import 'package:assignment9/screens/assignment6/screens/home.dart';
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
      body: Home(),
    );
  }
}
