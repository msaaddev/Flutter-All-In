import 'package:flutter/material.dart';
import 'package:assignment9/screens/assignment5/screens/AppDrawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ListRecord extends StatefulWidget {
  @override
  NewListRecord createState() => NewListRecord();
}

class NewListRecord extends State<ListRecord> {
  var data = [];

  Future fetchRecords() async {
    final apiURL = Uri.parse('https://pcc.edu.pk/ws/list/hms_consumers.php');
    var response = await http.get(apiURL);
    if (response.statusCode == 200) {
      setState(() {
        data = jsonDecode(response.body);
        data.removeAt(0);
      });
    } else {
      print('fail');
      print(response);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List Record',
      home: Scaffold(
        appBar: AppBar(title: Text('List Records')),
        drawer: DrawerList(),
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(),
            child: Column(
              children: [
                Column(
                  children: [
                    Center(
                      child: Card(
                          margin: EdgeInsets.only(top: 30),
                          child: Container(
                            width: 350,
                            padding: EdgeInsets.only(top: 40, bottom: 20),
                            child: Column(
                              children: [
                                Text(
                                  'All Records',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 22,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: ElevatedButton(
                                      child: Text('View Records'),
                                      style: ElevatedButton.styleFrom(
                                        onPrimary: Colors.white,
                                        elevation: 5,
                                      ),
                                      onPressed: () async {
                                        await fetchRecords();

                                        print('data');
                                        print(data[1]['lastName']);
                                        return showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return CupertinoAlertDialog(
                                                title: Text('Records Fetched',
                                                    style: TextStyle(
                                                      fontFamily: 'Raleway',
                                                      fontSize: 24,
                                                    )),
                                                actions: [
                                                  TextButton(
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text('Ok'))
                                                ],
                                              );
                                            });
                                      }),
                                )
                              ],
                            ),
                          )),
                    ),
                  ],
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                        columns: [
                          DataColumn(
                              label: Text('First Name',
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 16,
                                    color: Colors.grey[600],
                                  ))),
                          DataColumn(
                              label: Text('Last Name',
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 16,
                                    color: Colors.grey[600],
                                  ))),
                          DataColumn(
                              label: Text('Gender',
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 16,
                                    color: Colors.grey[600],
                                  ))),
                          DataColumn(
                              label: Text('Email',
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 16,
                                    color: Colors.grey[600],
                                  ))),
                          DataColumn(
                              label: Text('Phone Number',
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 16,
                                    color: Colors.grey[600],
                                  ))),
                        ],
                        rows: data.map((e) {
                          if (e['id'] != 1) {
                            print(e['id']);
                            return DataRow(cells: [
                              DataCell(Text(e['firstName'])),
                              DataCell(Text(e['lastName'])),
                              DataCell(Text(e['gender'])),
                              DataCell(Text(e['email'])),
                              DataCell(Text(e['phone'])),
                            ]);
                          } else {
                            print('hello');
                          }
                        }).toList())),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
