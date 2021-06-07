import 'package:flutter/material.dart';
import 'package:assignment9/screens/assignment8/widgets/Drawer.dart';

class SixTab extends StatefulWidget {
  @override
  _SixTabState createState() => _SixTabState();
}

enum Companies { Samsung, Apple }

class _SixTabState extends State<SixTab> {
  bool isChecked = false;
  DateTime _dateTime;
  double _currentSliderValue = 20;
  Companies _character = Companies.Samsung;
  bool _switchVal = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return MaterialApp(
        title: 'Six Tab Screen',
        home: DefaultTabController(
          length: 6,
          child: Scaffold(
            drawer: DrawerW(),
            appBar: AppBar(
              title: Text('Input & Selection Options'),
              bottom: TabBar(
                tabs: [
                  Tab(
                    text: 'Checkbox',
                  ),
                  Tab(
                    text: 'Date & Time',
                  ),
                  Tab(
                    text: 'Radio',
                  ),
                  Tab(
                    text: 'Slider',
                  ),
                  Tab(
                    text: 'Switch',
                  ),
                  Tab(
                    text: 'Text Field',
                  )
                ],
              ),
            ),
            body: Center(
              child: Container(
                width: 200,
                height: 120,
                child: TabBarView(children: [
                  Checkbox(
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.resolveWith(getColor),
                    value: isChecked,
                    onChanged: (bool value) {
                      setState(() {
                        isChecked = value;
                      });
                    },
                  ),
                  Column(
                    children: [
                      Text(
                        _dateTime == null
                            ? 'Nothing has been picked'
                            : _dateTime.toString(),
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w800),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(1900),
                                    lastDate: DateTime(3000))
                                .then((date) {
                              setState(() {
                                _dateTime = date;
                              });
                            });
                          },
                          child: Text('Pick a date'))
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      ListTile(
                        title: const Text('Samsung'),
                        leading: Radio<Companies>(
                          value: Companies.Samsung,
                          groupValue: _character,
                          onChanged: (Companies value) {
                            setState(() {
                              _character = value;
                            });
                          },
                        ),
                      ),
                      ListTile(
                        title: const Text('Thomas Apple'),
                        leading: Radio<Companies>(
                          value: Companies.Apple,
                          groupValue: _character,
                          onChanged: (Companies value) {
                            setState(() {
                              _character = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  Slider(
                    value: _currentSliderValue,
                    min: 0,
                    max: 100,
                    divisions: 5,
                    label: _currentSliderValue.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        _currentSliderValue = value;
                      });
                    },
                  ),
                  Switch(
                      value: _switchVal,
                      onChanged: (bool val) {
                        setState(() {
                          _switchVal = val;
                        });
                      }),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Name',
                    ),
                  ),
                ]),
              ),
            ),
          ),
        ));
  }
}
