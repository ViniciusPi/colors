import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int c = 1;
  funcColor() {
    switch (c) {
      case 1:
        return Colors.amber;
      case 2:
        return Colors.red;
      default:
        c = 0;
        return Colors.blue;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1e1e1e),
      appBar: AppBar(
        backgroundColor: funcColor(),
        title: Text('this title sucks'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: SizedBox(
                height: 30,
                child: FlatButton(
                    color: Colors.amber,
                    onPressed: () {
                      setState(() {
                        c = 1;
                      });
                    },
                    child:
                        Text('Amber', style: TextStyle(color: Colors.white))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: SizedBox(
                height: 30,
                child: FlatButton(
                    color: Colors.red,
                    onPressed: () {
                      setState(() {
                        c = 2;
                      });
                    },
                    child: Text('Red', style: TextStyle(color: Colors.white))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: SizedBox(
                height: 30,
                child: FlatButton(
                    color: Colors.blue,
                    onPressed: () {
                      setState(() {
                        c = 0;
                      });
                    },
                    child: Text('Blue', style: TextStyle(color: Colors.white))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
