import 'package:flutter/material.dart';

class ToggleButton extends StatefulWidget {
  @override
  _ToggleButtonWidget createState() => _ToggleButtonWidget();
}

class _ToggleButtonWidget extends State<ToggleButton> {
  List<bool> _selections = List.generate(2, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(top: 10.0, left: 6.0, bottom: 20.0),
            child: Text(
              "Transaction Types",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          )),
      ToggleButtons(
        children: [
          Padding(
              padding: EdgeInsets.only(
                  top: 8.0, bottom: 8.0, left: 50.0, right: 50.0),
              child: Text(
                'Money In',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              )),
          Padding(
              padding: EdgeInsets.only(
                  top: 8.0, bottom: 8.0, left: 50.0, right: 50.0),
              child: Text(
                'Money Out',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              )),
        ],
        isSelected: _selections,
        borderRadius: BorderRadius.circular(3),
        onPressed: (index) => {
          setState(() {
            print(index);
            var temp = 1 - index;
            _selections[index] = true;
            _selections[temp] = false;
          })
        },
      ),
    ]));
  }
}
