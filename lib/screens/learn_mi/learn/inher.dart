import 'package:flutter/widgets.dart';
import 'package:learn_flutter_2022/screens/learn_mi/learn/screen.dart';

class InheritedScreen extends StatelessWidget {
  String name = "Miichisoft";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Screen1(name), Screen1(name), Screen1(name)],
    );
  }
}
