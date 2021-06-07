import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  @override
  _DropdownWidget createState() => _DropdownWidget();
}

class _DropdownWidget extends State<DropDown> {
  String dropdownValue = ' Newest First';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.all(6.0),
                child: Text(
                  'Sort By',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              )),
          DropdownButton<String>(
              value: dropdownValue,
              isExpanded: true,
              onChanged: (newValue) {
                setState(() {
                  dropdownValue = newValue;
                });
              },
              items: [
                ' Newest First',
                ' Oldest First',
                ' Value High-Value',
                ' Value Low-Value'
              ].map(((item) {
                return DropdownMenuItem(
                  value: item,
                  child: Text(item),
                );
              })).toList()),
        ],
      ),
    );
  }
}
