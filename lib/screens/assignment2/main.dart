import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:assignment9/main.dart';

class Assignment2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
          appBar: AppBar(title: Center(child: Text('App Drawer '))),
          drawer: Drawer(
              child: ListView(
            children: [
              Container(
                height: 180.0,
                child: DrawerHeader(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.network(
                            'https://i.imgur.com/ZLhqyQK.jpg',
                            height: 80,
                            width: 80,
                          ),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 10.0),
                          child: Text('Muhammad Saad',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600))),
                      Container(
                          child: Text('saad@gmail.com',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600))),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                ),
              ),
              DrawerList()
            ],
          )),
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
                    'App Drawer',
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
                    'Assignment where we have to make an App Drawer.',
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

class DrawerList extends StatefulWidget {
  @override
  NewDrawerList createState() => NewDrawerList();
}

class NewDrawerList extends State<DrawerList> {
  List<String> labels = [
    'Today',
    'Products',
    'Direct Materials',
    'Direct Labour',
    'Overheads',
    'Customers',
    'Suppliers',
    'Consultants',
    'Help',
    'Settings',
    'Logout',
    'Home'
  ];

  List<IconData> icons = [
    Icons.email,
    Icons.inbox,
    Icons.group,
    Icons.local_offer,
    Icons.local_offer,
    Icons.group,
    Icons.group,
    Icons.group,
    Icons.help_outline,
    Icons.settings,
    Icons.logout,
    Icons.inbox
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.maxFinite,
        child: ListView.builder(
            itemCount: labels.length,
            itemBuilder: (context, index) {
              return Column(children: <Widget>[
                Container(
                    child: index == 1 || index == 7
                        ? Divider(
                            thickness: 3,
                          )
                        : null),
                ListTile(
                  leading: Icon(icons[index], size: 20),
                  title: Text(labels[index],
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  onTap: () {
                    if (index == 11) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return MyApp();
                      }));
                    } else
                      Navigator.pop(context);
                  },
                  dense: true,
                )
              ]);
            }));
  }
}
