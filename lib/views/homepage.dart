import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int c = 1;
  bool rainbow = false;
  int cycles = 0;
  funcColor() {
    switch (c) {
      case 1:
        return Colors.amber;
      case 2:
        return Colors.red;
      case 3:
        return Colors.blue;
      case 4:
        return Colors.green;
      case 5:
        return const Color(0xffbd1b50);
      default:
        return Colors.black;
    }
  }

  Future<void> rainbowFunc() async {
    setState(() {
      c = 1;
    });
    while (rainbow) {
      await Future.delayed(const Duration(milliseconds: 500));
      setState(() {
        c++;
      });
      if (c == 6) {
        setState(() {
          c = 1;
        });
        cycles + 1;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1e1e1e),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: funcColor(),
        title: const Text('this title sucks'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.5, horizontal: 5),
              child: Container(
                color: Colors.amber,
                height: 30,
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        c = 1;
                      });
                    },
                    child: const Text('Amber',
                        style: TextStyle(color: Colors.white))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.5, horizontal: 5),
              child: Container(
                color: Colors.red,
                height: 30,
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        c = 2;
                      });
                    },
                    child: const Text('Red',
                        style: TextStyle(color: Colors.white))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.5, horizontal: 5),
              child: Container(
                color: Colors.blue,
                height: 30,
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        c = 3;
                      });
                    },
                    child: const Text('Blue',
                        style: TextStyle(color: Colors.white))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.5, horizontal: 5),
              child: Container(
                color: Colors.green,
                height: 30,
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        c = 4;
                      });
                    },
                    child: const Text('Green',
                        style: TextStyle(color: Colors.white))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.5, horizontal: 5),
              child: Container(
                color: const Color(0xffbd1b50),
                height: 30,
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        c = 5;
                      });
                    },
                    child: const Text('Rose',
                        style: TextStyle(color: Colors.white))),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          rainbow = !rainbow;
          rainbowFunc();
        },
        backgroundColor: funcColor(),
        child: const Icon(Icons.all_inclusive),
      ),
    );
  }
}
