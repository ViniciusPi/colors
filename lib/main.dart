import 'package:change_colors/views/app_page.dart';
import 'package:flutter/material.dart';

import 'controllers/color_controller.dart';

main() {
  runApp(ColorApp());
}

class ColorApp extends StatefulWidget {
  const ColorApp({Key? key}) : super(key: key);

  @override
  _ColorAppState createState() => _ColorAppState();
}

class _ColorAppState extends State<ColorApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppLayout(),
      theme: ThemeData(
        primarySwatch: Changer.instance.funColor(),
      ),
    );
  }
}
