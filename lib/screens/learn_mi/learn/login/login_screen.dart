import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter_2022/screens/learn_mi/learn/home/home_screen.dart';
import '../../../../share_pref.dart';
import 'login_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<LoginScreen> {
  final Color backgroundColor = Colors.green;
  final Color primaryColor = Colors.green;
  late FocusNode userNameFocus, passwordFocus;

  final _userNameController = TextEditingController(text: 'quanganh');
  final _passwordController = TextEditingController(text: 'quanganh');
  bool _passwordVisible = false;
  bool _isEnableButtonLogin = true;
  late LoginBloc bloc;

  //Variable for TextFiled
  Color colorEnable = Colors.white;
  Color colorDisable = Colors.black38;
  double fontSize = 18.0;

  @override
  void initState() {
    super.initState();
    initData();
    onListenerStream();
  }

  String titleScreen() => "";

  Widget? createBodyWidget() => null;

  void initData() {
    bloc = LoginBloc();
    _passwordVisible = true;
    userNameFocus = FocusNode();
    passwordFocus = FocusNode();

    userNameFocus.addListener(() {
      setState(() {
        //reload data
      });
    });
    passwordFocus.addListener(() {
      setState(() {
        //reload data
      });
    });
  }

  void onListenerStream() {
    _checkEnableButtonLogin();
    _userNameController.addListener(_checkEnableButtonLogin);
    _passwordController.addListener(_checkEnableButtonLogin);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          colorFilter: ColorFilter.linearToSrgbGamma(),
          image: AssetImage("images/ic_test.jpg"),
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: BlocProvider(
            child: Center(
              child: Container(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Flexible(
                        child: Container(),
                        flex: 1,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Text(
                              'Quang Anh',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32,
                                  color: primaryColor),
                            ),
                          ),
                          _createTFUserName(),
                          _createTFPassword(),
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: _createButtonLogin(),
                          ),
                        ],
                      ),
                      Flexible(
                        child: Container(),
                        flex: 1,
                      ),
                    ],
                  )),
            ),
            bloc: bloc,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _userNameController.dispose();
    _passwordController.dispose();
  }

  _checkEnableButtonLogin() {
    String userName = _userNameController.text;
    String password = _passwordController.text;
    _isEnableButtonLogin = userName.isNotEmpty && password.isNotEmpty;
    setState(() {
      //render ui
    });
  }

  double _strokeValue(bool enable) {
    return enable ? 2 : 1.0;
  }

  TextField _createTFUserName() {
    String text = _userNameController.text;
    bool isEnable = (userNameFocus.hasFocus || text.isNotEmpty);
    Color userNameColor = isEnable ? colorEnable : colorDisable;
    double userNameStroke = _strokeValue(isEnable);
    return TextField(
      style: TextStyle(color: colorEnable, fontSize: fontSize),
      focusNode: userNameFocus,
      controller: _userNameController,
      autofocus: false,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: userNameColor, width: userNameStroke),
        ),
        labelStyle: TextStyle(color: userNameColor),
        focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: userNameColor, width: userNameStroke)),
        border: OutlineInputBorder(
            borderSide:
                BorderSide(color: userNameColor, width: userNameStroke)),
        //show error
        labelText: 'Tài khoản',
        helperText: '',
        prefixIcon: Icon(
          Icons.person,
          color: userNameColor,
        ),
      ),
    );
  }

  TextField _createTFPassword() {
    String text = _passwordController.text;
    bool isEnable = (passwordFocus.hasFocus || text.isNotEmpty);
    Color passwordColor = isEnable ? colorEnable : colorDisable;
    double passwordStroke = _strokeValue(isEnable);
    return TextField(
      style: TextStyle(color: colorEnable, fontSize: fontSize),
      focusNode: passwordFocus,
      controller: _passwordController,
      obscureText: _passwordVisible,
      autofocus: false,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: passwordColor, width: passwordStroke),
        ),
        labelStyle: TextStyle(color: passwordColor),
        focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: passwordColor, width: passwordStroke)),
        border: OutlineInputBorder(
            borderSide:
                BorderSide(color: passwordColor, width: passwordStroke)),
        //show error
        labelText: 'Mật khẩu',
        prefixIcon: Icon(
          Icons.lock,
          color: passwordColor,
        ),
        suffixIcon: IconButton(
          icon: Icon(
            _passwordVisible ? Icons.visibility : Icons.visibility_off,
            color: passwordColor,
          ),
          onPressed: () {
            setState(() {
              _passwordVisible = !_passwordVisible;
            });
          },
        ),
        helperText: '',
      ),
    );
  }

  ElevatedButton _createButtonLogin() {
    var onPressed = _isEnableButtonLogin
        ? () async {
            String userName = _userNameController.text;
            String password = _passwordController.text;
            print('buttonLoginClick $userName | $password');
            SharePref sharePres = SharePref();
            await sharePres.putString(SharePref.account, userName);
            await sharePres.putString(SharePref.password, password);
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => HomeScreen()));

            // bloc.onLogin(userName, password);

            // var map = {
            //   RegisterScreen.nameKey: userName,
            //   RegisterScreen.passwordKey: password
            // };
            // int argument = await Navigator.push(context,
            //     MaterialPageRoute(builder: (con) => RegisterScreen(map)));
            // print('$argument');
            // if (argument is String) {
            //   print('return value ${argument.toString()}');
            // } else if (argument is int) {
            //   int value = int.parse(argument.toString());
            //   print('return value1 ${value}');
            // }
          }
        : null;
    return ElevatedButton(child: const Text('Đăng nhập'), onPressed: onPressed);
  }
}

class BlocProvider extends InheritedWidget {
  final LoginBloc bloc;

  const BlocProvider({Key? key, required Widget child, required this.bloc})
      : super(key: key, child: child);

  @override
  bool updateShouldNotify(covariant BlocProvider oldWidget) {
    return false;
  }

  static BlocProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<BlocProvider>()!;
  }
}
