import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  static String nameKey = 'name';
  static String passwordKey = 'password';

  final Map<String, String> argument;

  RegisterScreen(this.argument);

  @override
  Widget build(BuildContext context) {
    String name = argument[nameKey] ?? "";
    String password = argument[passwordKey] ?? "";
    print('name $name | $password');
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Back'),
          onPressed: () {
            Navigator.pop(context, 123);
          },
        ),
      ),
    );
  }
}
