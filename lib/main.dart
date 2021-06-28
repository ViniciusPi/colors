import 'package:change_colors/views/app_page.dart';
import 'package:flutter/material.dart';

main() {
  runApp(ColorApp());
}

class ColorApp extends StatelessWidget {
  const ColorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppLayout(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
