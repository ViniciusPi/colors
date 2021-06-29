import 'package:flutter/material.dart';

import 'views/homepage.dart';

main() {
  runApp(ColorApp());
}

class ColorApp extends StatelessWidget {
  const ColorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}
