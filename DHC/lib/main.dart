import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:DHC/globalVariables.dart';
import 'package:DHC/login.dart';
import 'package:DHC/registerNewUser.dart';
import 'home.dart';

//Initializing firebase

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]).then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData(fontFamily: 'MontSerrat');
    return ListView(children: <Widget>[
      SizedBox(height: 70),
      UnderText(),
      SizedBox(height: 170),
      NextButton(),
      Register(),
    ]);
  }
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(backgroundColor: backgroundColorDHC, body: Second()),
    );
  }
}

class NextButton extends StatefulWidget {
  @override
  _NextButton createState() => _NextButton();
}

final now = DateTime.now();
final today = DateTime(now.year, now.month, now.day);

class _NextButton extends State<NextButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ButtonTheme(
          minWidth: 150.0,
          height: 50.0,
          child: RaisedButton(
            color: DHCGray,
            shape: new RoundedRectangleBorder(
              side: BorderSide(color: DHCGreen),
              borderRadius: new BorderRadius.circular(30.0),
            ),
            onPressed: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              prefs.setString("Today", today.toString());
              int calculate(DateTime date) {
                DateTime now = DateTime.now();
                return DateTime(date.year, date.month, date.day)
                    .difference(DateTime(now.year, now.month, now.day))
                    .inDays;
              }

              print(calculate(today) == -1);

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
            child: const Text('Log ind',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "MontSerrat",
                    color: Colors.white)),
          ),
        ),
        SizedBox(height: 50),
      ],
    );
  }
}

class Register extends StatefulWidget {
  @override
  _Register createState() => _Register();
}

class _Register extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ButtonTheme(
          minWidth: 150.0,
          height: 50.0,
          child: RaisedButton(
            color: DHCGray,
            shape: new RoundedRectangleBorder(
              side: BorderSide(color: DHCGreen),
              borderRadius: new BorderRadius.circular(30.0),
            ),
            onPressed: () async {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UserRegister()),
              );
            },
            child: const Text('Opret dig',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "MontSerrat",
                    color: Colors.white)),
          ),
        ),
        SizedBox(height: 50),
      ],
    );
  }
}

class UnderText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: 20),
        Text(
          'Hovedpinekalender',
          style: TextStyle(
              fontSize: 35, fontFamily: "MontSerrat", color: Colors.white),
        ),
      ],
    );
  }
}
