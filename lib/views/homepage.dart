import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool c = true;
  funcColor() {
    switch (c) {
      case true:
        return Colors.amber;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('this title sucks'),
      ),
      body: Center(
        child: FlatButton(
            onPressed: () {
              setState(() {
                c = !c;
              });
            },
            child: Text('Oi')),
      ),
    );
  }
}
