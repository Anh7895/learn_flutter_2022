import 'package:flutter/material.dart';

// AppBar(leading, title, Tool Bar (action), bottom)
class DeMoAppBar extends StatelessWidget {
  const DeMoAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: const Text("AppBar"),
        backgroundColor: Colors.red,
        centerTitle: true,
        // căn giữa title

        // căn chỉnh title
        // AppBar(
        //     title: Align (
        //         child: Text("AppBar Centered Title"),
        //         alignment: Alignment.center
        //     )
        // );

        // leading là 1 widget trước title thông thường là icon hoặc iconButton

        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
          iconSize: 70, // set size Icon
        ),

        // vùng bottom thường chứa 1 tapbar

        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
    );
  }
}
