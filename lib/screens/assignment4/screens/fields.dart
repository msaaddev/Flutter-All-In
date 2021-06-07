import 'package:flutter/material.dart';

class Fields extends StatefulWidget {
  @override
  FieldsWidget createState() => FieldsWidget();
}

class FieldsWidget extends State<Fields> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
          padding: EdgeInsets.only(left: 20.0, top: 15),
          child: Row(
            children: [
              Column(
                children: [
                  Text(
                    'From',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Container(
                      width: 150,
                      padding: EdgeInsets.only(
                        right: 10,
                      ),
                      margin: EdgeInsets.only(bottom: 20),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: '-',
                        ),
                      )),
                ],
              ),
              Column(
                children: [
                  Text(
                    'To',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Container(
                      margin: EdgeInsets.only(bottom: 20),
                      width: 150,
                      padding: EdgeInsets.only(
                        left: 10,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Today',
                        ),
                      )),
                ],
              )
            ],
          )),
    );
  }
}
