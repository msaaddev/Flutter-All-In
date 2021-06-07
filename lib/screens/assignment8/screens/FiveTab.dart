import 'package:assignment9/screens/assignment8/widgets/Drawer.dart';
import 'package:flutter/material.dart';

class FiveTab extends StatefulWidget {
  @override
  FiveTabState createState() => FiveTabState();
}

enum Alphabets { A, B, C, D }

class FiveTabState extends State<FiveTab> with TickerProviderStateMixin {
  double _volume = 0.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Five Tab Screen',
        home: DefaultTabController(
            length: 5,
            child: Scaffold(
              drawer: DrawerW(),
              appBar: AppBar(
                title: Text('Different Buttons'),
                bottom: TabBar(
                  tabs: [
                    Tab(
                      text: 'Elevated',
                    ),
                    Tab(
                      text: 'Floating',
                    ),
                    Tab(
                      text: 'Icon Btn',
                    ),
                    Tab(
                      text: 'Outline',
                    ),
                    Tab(
                      text: 'Popup Menu',
                    )
                  ],
                ),
              ),
              body: Center(
                  child: Container(
                width: 250,
                height: 100,
                child: TabBarView(children: [
                  ElevatedButton(
                    child: Text(
                      'Elevated Button',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueAccent[700],
                      onPrimary: Colors.white,
                      elevation: 50,
                      shadowColor: Colors.blueAccent,
                    ),
                    onPressed: () {},
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.tab),
                    backgroundColor: Colors.blue,
                  ),
                  Column(children: [
                    IconButton(
                      icon: Icon(Icons.volume_up),
                      tooltip: 'Increase volume by 10',
                      onPressed: () {
                        setState(() {
                          _volume += 10;
                        });
                      },
                    ),
                    Text('Volume : $_volume')
                  ]),
                  OutlinedButton(
                    child: Text(
                      'Outline Button',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    onPressed: () {},
                  ),
                  PopupMenuButton<Alphabets>(
                    onSelected: (Alphabets result) {},
                    itemBuilder: (BuildContext context) =>
                        <PopupMenuEntry<Alphabets>>[
                      const PopupMenuItem<Alphabets>(
                        value: Alphabets.A,
                        child: Text('Alphabel A'),
                      ),
                      const PopupMenuItem<Alphabets>(
                        value: Alphabets.B,
                        child: Text('Alphabel B'),
                      ),
                      const PopupMenuItem<Alphabets>(
                        value: Alphabets.C,
                        child: Text('Alphabel C'),
                      ),
                      const PopupMenuItem<Alphabets>(
                        value: Alphabets.D,
                        child: Text('Alphabel D'),
                      ),
                    ],
                  ),
                ]),
              )),
            )));
  }
}
