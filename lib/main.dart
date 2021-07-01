import 'package:flutter/material.dart';

import 'views/homepage.dart';

main() {
  runApp(const ColorApp());
}

class ColorApp extends StatelessWidget {
  const ColorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
