import 'package:change_colors/controllers/color_controller.dart';

import 'package:flutter/material.dart';

import 'color_bottons.dart';

class AppLayout extends StatefulWidget {
  const AppLayout({Key? key}) : super(key: key);

  @override
  _AppLayoutState createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1e1e1e),
      appBar: AppBar(
        title: Text("Color App"),
        centerTitle: true,
      ),
      body: Bottons(),
      floatingActionButton: Align(
        alignment: AlignmentDirectional.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: FloatingActionButton(
              tooltip: "botão",
              elevation: 0,
              onPressed: () {
                setState(() {
                  Changer.instance.color = '';
                });
              }),
        ),
      ),
    );
  }
}
