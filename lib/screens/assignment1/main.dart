import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:assignment9/widgets/Drawer.dart';

class Assignment1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.purple[900]),
        home: Scaffold(
            drawer: DrawerW(),
            appBar: AppBar(title: Center(child: Text('Primo'))),
            body: PrimeNumber()));
  }
}

class PrimeNumber extends StatefulWidget {
  @override
  GetPrimeNumber createState() => GetPrimeNumber();
}

class GetPrimeNumber extends State<PrimeNumber> {
  TextEditingController getText = new TextEditingController();
  String isPrime;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Container(
          width: 300,
          height: 80,
          child: TextField(
            controller: getText,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter an Integer',
            ),
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            keyboardType: TextInputType.number,
          ),
          margin: EdgeInsets.only(top: 120.0),
        ),
        Container(
          child: ElevatedButton(
              child: Text('Check Prime'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.purple[900],
                  onPrimary: Colors.white,
                  elevation: 5,
                  shadowColor: Colors.purple),
              onPressed: () {
                int num = int.parse(getText.text);
                if (num == 0 || num == 1) {
                  return setState(() {
                    isPrime = 'Not a prime or composite number.';
                  });
                }
                for (int i = 2; i <= num / 2; i++) {
                  if (num % i == 0) {
                    return setState(() {
                      isPrime = 'The number is composite. ';
                    });
                  }
                }
                return setState(() {
                  isPrime = 'The number is prime.';
                });
              }),
        ),
        Container(
            child: Text(isPrime != null ? '$isPrime' : '',
                style: TextStyle(
                    color: Colors.purple[900],
                    fontSize: 18,
                    fontWeight: FontWeight.w700)),
            margin: EdgeInsets.all(20.0))
      ],
    ));
  }
}
