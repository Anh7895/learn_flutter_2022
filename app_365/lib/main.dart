import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'module/home/bloc/home_bloc.dart';
import 'module/intro/screen/intro_screen.dart';
import 'module/login/bloc/login_bloc.dart';
import 'module/resgister/bloc/register_bloc.dart';
import 'navigator/navigator_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => HomeBloc(),
        ),
        BlocProvider(
          create: (BuildContext context) => LoginBloc(),
        ),
        BlocProvider(
          create: (BuildContext context) => RegisterBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Việc làm theo giờ',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          brightness: Brightness.light,
          canvasColor: Colors.transparent,
        ),
        onGenerateRoute: generateRoute,
        home: const IntroScreen(),
      ),
    );
  }
}
