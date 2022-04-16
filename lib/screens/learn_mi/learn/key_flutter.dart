import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DemoKeyScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DemoKeyState();
  }
}

class _DemoKeyState extends State<DemoKeyScreen> {
  var listSquareLess = <Widget>[SquareLessWidget(), SquareLessWidget()];
  var listSquareFul = <Widget>[
    Center(
      child: SquareFulWidget(
        key: UniqueKey(),
      ),
    ),
    Center(
      child: SquareFulWidget(
        key: UniqueKey(),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var listSquare = listSquareFul;
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: listSquare,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            listSquare.add(listSquare.removeAt(0));
          });
        },
        child: Text('Swap'),
      ),
    );
  }
}

class UserModel {
  String name = "";
}

class StudentModel {
  String studentName = "";
}

// ignore: must_be_immutable
class SquareLessWidget extends StatelessWidget {
  Color color = generateColorRandom();

  @override
  Widget build(BuildContext context) {
    print('SquareLessWidget build ${this.hashCode} $color');
    return Container(
      width: 100,
      height: 100,
      color: color,
    );
  }
}

class SquareFulWidget extends StatefulWidget {
  Widget? child;

  SquareFulWidget({Key? key, this.child}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return SquareFulState();
  }
}

class SquareFulState extends State<SquareFulWidget> {
  Color color = generateColorRandom();

  @override
  Widget build(BuildContext context) {
    print('SquareFulState build ${this.hashCode}');
    return Container(
      width: 100,
      height: 100,
      color: color,
    );
  }
}

Color generateColorRandom() {
  final Random random = Random();
  return Color.fromRGBO(
      random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
}

Widget _createWidget() {
  return Container(
    child: SquareLessWidget(),
  );
}
