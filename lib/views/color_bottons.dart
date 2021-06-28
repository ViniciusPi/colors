import 'package:flutter/material.dart';

class Bottons extends StatefulWidget {
  const Bottons({Key? key}) : super(key: key);

  @override
  _BottonsState createState() => _BottonsState();
}

class _BottonsState extends State<Bottons> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 100,
              child: FlatButton(
                height: 50,
                onPressed: () {},
                child: Text(
                  'RED',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.red,
              ),
            ),
          )
        ],
      ),
    );
  }
}
