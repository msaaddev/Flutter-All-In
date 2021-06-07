import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  String username = '';
  String email = '';
  String number = '';
  String password = '';
  String msg = '';
  bool isChecked = false;

  final key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
          child: Column(
        children: [
          Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 60, left: 20),
              child: Icon(Icons.arrow_back)),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 10, left: 20),
            child: Column(
              children: [
                Text("Register",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w800,
                    ))
              ],
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 10, bottom: 20, left: 20),
            child: Column(
              children: [
                Text("Sign up to experience new ways",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Colors.grey[600]))
              ],
            ),
          ),
          Form(
              key: key,
              child: Column(
                children: [
                  ListTile(
                    title: TextFormField(
                      onSaved: (value) {
                        setState(() {
                          username = value.toString();
                        });
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: 'User Name',
                        labelStyle: TextStyle(fontWeight: FontWeight.bold),
                        prefixIcon: Icon(Icons.person),
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: new OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    title: TextFormField(
                      onSaved: (value) {
                        setState(() {
                          email = value.toString();
                        });
                      },
                      validator: (value) {
                        RegExp regExp = new RegExp(
                            r'^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$');

                        print('hello');
                        print(regExp.hasMatch(value.toString()));

                        if (!regExp.hasMatch(value.toString())) {
                          return 'Please enter a valid email';
                        }

                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: 'Email ID',
                        labelStyle: TextStyle(fontWeight: FontWeight.bold),
                        prefixIcon: Icon(Icons.alternate_email),
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: new OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    title: TextFormField(
                      onSaved: (value) {
                        setState(() {
                          number = value.toString();
                        });
                      },
                      validator: (value) {
                        int len = value.toString().length;
                        if (len > 11 || len < 11) {
                          return 'Total allowed digits for number is 11';
                        } else {
                          RegExp regExp = new RegExp(r'(\d{11})');

                          if (!regExp.hasMatch(value.toString())) {
                            return 'Only numbers are allowed';
                          }
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: 'Mobile No',
                        labelStyle: TextStyle(fontWeight: FontWeight.bold),
                        prefixIcon: Icon(Icons.call),
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: new OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    title: TextFormField(
                      onSaved: (value) {
                        setState(() {
                          password = value.toString();
                        });
                      },
                      validator: (value) {
                        int len = value.toString().length;
                        if (len < 5) {
                          return 'Password length must be greater than 5.';
                        } else {
                          RegExp regExp = new RegExp(r'^[a-zA-Z0-9]+$');

                          if (!regExp.hasMatch(value.toString())) {
                            return 'Password must only contain alphabets and numbers';
                          }
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(fontWeight: FontWeight.bold),
                        prefixIcon: Icon(Icons.lock),
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: new OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                      title: Container(
                    margin: EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                      child: Container(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Text(
                          'Register',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          onPrimary: Colors.white,
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35.0),
                          )),
                      onPressed: () {
                        if (!isChecked) {
                          setState(() {
                            msg = 'Kindly accept the terms to continue.';
                          });
                        } else {
                          if (key.currentState.validate()) {
                            key.currentState.save();
                          }
                        }
                      },
                    ),
                  )),
                  ListTile(
                    title: Row(
                      children: [
                        Checkbox(
                          checkColor: Colors.white,
                          value: isChecked,
                          onChanged: (value) {
                            setState(() {
                              msg = '';

                              isChecked = value;
                            });
                          },
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'I accept the ',
                            style: TextStyle(color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Terms & Conditions',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Text(msg != '' ? '$msg' : '',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.red)),
                ],
              ))
        ],
      )),
    );
  }
}
