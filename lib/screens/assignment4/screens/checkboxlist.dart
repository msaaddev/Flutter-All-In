import 'package:flutter/material.dart';

class CheckBoxList extends StatefulWidget {
  final String text;

  CheckBoxList({this.text});

  @override
  _CheckBoxListWidget createState() => _CheckBoxListWidget();
}

class _CheckBoxListWidget extends State<CheckBoxList> {
  bool _checked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CheckboxListTile(
        title: Text(
          widget.text,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        controlAffinity: ListTileControlAffinity.trailing,
        value: _checked,
        onChanged: (value) {
          setState(() {
            if (_checked) {
              _checked = false;
            } else {
              _checked = true;
            }
          });
        },
      ),
    );
  }
}
