import 'package:flutter/material.dart';

class ToggleHealth extends StatefulWidget {
  @override
  _ToggleHealthWidget createState() => _ToggleHealthWidget();
}

class _ToggleHealthWidget extends State<ToggleHealth> {
  List<bool> _selections = List.generate(2, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 400,
        margin: EdgeInsets.only(bottom: 10.0),
        child: Column(children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 10.0, left: 6.0, bottom: 20.0),
                child: Text(
                  "Transaction Health",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              )),
          ToggleButtons(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: 8.0, bottom: 8.0, left: 40.0, right: 40.0),
                child: Column(
                  children: [
                    CircleAvatar(
                        backgroundColor: Color(0xff94d500),
                        child: Icon(Icons.recommend)),
                    Text(
                      'Good',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 8.0, bottom: 8.0, left: 40.0, right: 40.0),
                child: Column(
                  children: [
                    CircleAvatar(
                        backgroundColor: Colors.orange,
                        child: Icon(Icons.thumb_down)),
                    Text(
                      'Ok',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              )
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
