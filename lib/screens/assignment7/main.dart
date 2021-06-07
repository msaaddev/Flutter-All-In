import 'package:flutter/material.dart';
import 'package:assignment9/screens/assignment7/screens/form.dart';
import 'package:assignment9/widgets/Drawer.dart';

class Assignment7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Validation',
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
          title: Text('Form Validation'),
        ),
        drawer: DrawerW(),
        body: FormWidget());
  }
}
