import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:DHC/globalVariables.dart';
import 'package:DHC/login.dart';
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
    return ListView(children: <Widget>[
      SizedBox(height: 70),
      Logo(),
      SizedBox(height: 10),
      UnderText(),
      SizedBox(height: 120),
      NextButton(),
    ]);
  }
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: Second()),
    );
  }
}

var geoLocation = String;
Position _currentPosition;
String _currentAddress;

class NextButton extends StatefulWidget {
  @override
  _NextButton createState() => _NextButton();
}

class _NextButton extends State<NextButton> {
  @override
  Widget build(BuildContext context) {
    final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonTheme(
          minWidth: 150.0,
          height: 50.0,
          child: RaisedButton(
            color: Colors.white,
            shape: new RoundedRectangleBorder(
              side: BorderSide(color: Color(0xfffb8900)),
              borderRadius: new BorderRadius.circular(30.0),
            ),
            onPressed: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              geolocator
                  .getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
                  .then((Position position) {
                setState(() {
                  _currentPosition = position;
                  print(position.toString());
                  prefs.setString("Position", position.toString());
                });
              }).catchError((e) {
                print(e);
              });

              prefs.remove('BWbrandintro');
              prefs.remove('BWbrandintro');

              prefs.remove('AWsatisfied');
              prefs.remove('AWOther');
              prefs.remove('AWgoodbye');
              prefs.remove('AWcomments');
              prefs.remove('AWCause');
              prefs.remove('AWbudget');

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
            child: const Text('Log ind',
                style: TextStyle(fontSize: 20, fontFamily: "NunitoSans")),
          ),
        ),
        SizedBox(height: 50),
        ButtonTheme(
          minWidth: 150.0,
          height: 50.0,
          child: RaisedButton(
            color: Colors.white,
            shape: new RoundedRectangleBorder(
              side: BorderSide(color: Color(0xfffb8900)),
              borderRadius: new BorderRadius.circular(30.0),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
            child: const Text('Sign up',
                style: TextStyle(fontSize: 20, fontFamily: "NunitoSans")),
          ),
        ),
      ],
    );
  }
}

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Image.asset(
        'asset/Logo_2020_04_Sort.png',
        fit: BoxFit.contain,
        height: 160,
      ),
    ]);
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
          '  novoti',
          style: TextStyle(fontSize: 35, fontFamily: "NunitoSans"),
        ),
      ],
    );
  }
}
