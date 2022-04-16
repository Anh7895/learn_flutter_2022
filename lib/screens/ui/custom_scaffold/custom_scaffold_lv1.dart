
import 'package:flutter/material.dart';

class CustomScaffoldLV1 extends StatefulWidget {
  const CustomScaffoldLV1({Key? key}) : super(key: key);

  @override
  State<CustomScaffoldLV1> createState() => _CustomScaffoldLV1State();
}

class _CustomScaffoldLV1State extends State<CustomScaffoldLV1> {
  @override
  Widget build(BuildContext context) {
    final container = Container(color: Colors.red, width: 100, height: 100,);
    return MaterialApp(
      title: "Custom Scaffold lv1",
      home: Scaffold(
        body: container,
      ),
    );
  }
}
