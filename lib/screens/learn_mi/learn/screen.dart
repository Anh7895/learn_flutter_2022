import 'package:flutter/widgets.dart';

class Screen1 extends StatelessWidget {
  final String name;

  const Screen1(this.name, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(name),
    );
  }
}
