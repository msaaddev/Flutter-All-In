import 'package:flutter/material.dart';
import 'package:assignment9/screens/assignment4/screens/dropdown.dart';
import 'package:assignment9/screens/assignment4/screens/toggle.dart';
import 'package:assignment9/screens/assignment4/screens/checkboxlist.dart';
import 'package:assignment9/screens/assignment4/screens/toggletransaction.dart';
import 'package:assignment9/screens/assignment4/screens/fields.dart';
import 'package:assignment9/widgets/Drawer.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Assignment4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Card Assignment',
        theme: ThemeData(primaryColor: Colors.purple[900]),
        home: Scaffold(
            drawer: DrawerW(),
            appBar: AppBar(title: Text('Sort & Filter')),
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
                      'Wireframe Assignment',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
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
                      'In this assignment, we used dropbutton, Toggle button and checkbox list',
                    ),
                  ],
                ),
                SingleChildScrollView(
                    child: ConstrainedBox(
                        constraints: BoxConstraints(), child: MyHome()))
              ],
            )));
  }
}

class MyHome extends StatefulWidget {
  @override
  HomeScreen createState() => HomeScreen();
}

class HomeScreen extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        DropDown(),
        ToggleButton(),
        CheckBoxList(
          text: 'Sale',
        ),
        CheckBoxList(
          text: 'Credit',
        ),
        CheckBoxList(
          text: 'Refund',
        ),
        CheckBoxList(
          text: 'Loan',
        ),
        CheckBoxList(
          text: 'Direct Material',
        ),
        CheckBoxList(
          text: 'Direct Labour',
        ),
        CheckBoxList(
          text: 'Asset',
        ),
        CheckBoxList(
          text: 'Other',
        ),
        CheckBoxList(
          text: 'Overhead',
        ),
        Divider(
          thickness: 2,
          indent: 10,
          endIndent: 10,
        ),
        ToggleHealth(),
        Divider(
          thickness: 2,
          indent: 10,
          endIndent: 10,
        ),
        CheckBoxList(
          text: 'Consultant Notes Only',
        ),
        CheckBoxList(
          text: 'Overview Only',
        ),
        CheckBoxList(
          text: 'Date Range',
        ),
        Fields()
      ],
    );
  }
}
