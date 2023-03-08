import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Even Multiples of 3',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bilangan Genap Kelipatan 3'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Bilangan Genap Kelipatan 3 :',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (BuildContext context, int index) {
                    int num = (index + 1) * 2;
                    if (num % 3 == 0) {
                      return Text(
                        '$num',
                        style: TextStyle(fontSize: 18),
                      );
                    } else {
                      return SizedBox.shrink();
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
