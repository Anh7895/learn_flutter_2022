import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuildWidget extends StatefulWidget {
  const BuildWidget({Key? key}) : super(key: key);
  final size = 10;

  @override
  State<BuildWidget> createState() => _BuildWidgetState();
}

class _BuildWidgetState extends State<BuildWidget> {
  var currentLight = 'Do';

  void _changerColor() {
    currentLight = currentLight == "xanh" ? "Do" : "Xanh";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Changer Color'),
      ),
      body: Center(
        child: Text(
            'Kich thuoc cua bong den la: ${widget.size}  va den dang co mau : $currentLight'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _changerColor();
          });
        },
        child: const Icon(Icons.color_lens),
      ),
    );
  }
}
