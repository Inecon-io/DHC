import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:DHC/globalVariables.dart';

import 'home.dart';

//Initializing firebase

final FirebaseAuth _auth = FirebaseAuth.instance;

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
      UnderText(),
      SizedBox(height: 50),
      Username(),
      SizedBox(height: 20),
      ParentWidget(),
      SizedBox(height: 100),
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

class NextButton extends StatefulWidget {
  @override
  _NextButton createState() => _NextButton();
}

class _NextButton extends State<NextButton> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: FractionalOffset.bottomCenter,
      child: ButtonTheme(
        minWidth: MediaQuery.of(context).size.width * 1,
        height: MediaQuery.of(context).size.height * 0.2,
        child: RaisedButton(
          color: Color(0xfffb8900),
          shape: new RoundedRectangleBorder(
            side: BorderSide(color: Color(0xfffb8900)),
          ),
          onPressed: () async {
            final FirebaseUser user = await _auth.currentUser();
            if (user == null) {
//6
              Scaffold.of(context).showSnackBar(const SnackBar(
                content: Text('No one has signed in.'),
              ));
              return;
            }

            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            );
          },
          child: const Text('sign in',
              style: TextStyle(
                  fontSize: 20, fontFamily: "NunitoSans", color: Colors.white)),
        ),
      ),
    );
  }
}

TextEditingController emailController = new TextEditingController();
TextEditingController passwordController = new TextEditingController();

class Username extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          width: 300,
          child: TextField(
            controller: emailController,
            obscureText: true,
            autofocus: false,
            decoration: InputDecoration(
              suffixIcon: Icon(
                Icons.email,
                color: Colors.grey,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                borderSide: BorderSide(color: DHCGray, width: 2.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                borderSide: BorderSide(color: Colors.black, width: 1.0),
              ),
              labelText: 'mail@mail.dk',
              labelStyle:
                  TextStyle(fontFamily: "NunitoSans", color: Colors.grey),
              hintText: 'email',
              hintStyle:
                  TextStyle(fontFamily: "NunitoSans", color: Colors.black),
            ),
          ))
    ]);
  }
}

class ParentWidget extends StatefulWidget {
  @override
  _ParentWidgetState createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  bool _showPassword = false;

  void _handleTapboxChanged(bool newValue) {
    setState(() {
      this._showPassword = !this._showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          width: 300,
          child: TextField(
            controller: passwordController,
            autofocus: false,
            obscureText: !this._showPassword,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                icon: Icon(Icons.visibility),
                color: Colors.grey,
                onPressed: () {
                  setState(() => this._showPassword = !this._showPassword);
                },
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                borderSide: BorderSide(color: Color(0xfffb8900), width: 2.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                borderSide: BorderSide(color: Colors.black, width: 1.0),
              ),
              labelText: 'password',
              labelStyle:
                  TextStyle(fontFamily: "NunitoSans", color: Colors.grey),
              hintText: 'password',
              hintStyle:
                  TextStyle(fontFamily: "NunitoSans", color: Colors.black),
            ),
          ))
    ]);
  }
}

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Image.asset(
        'asset/Logo_2020_04_Sort.png',
        fit: BoxFit.contain,
        height: 100,
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
          'novoti',
          style: TextStyle(fontSize: 40, fontFamily: "NunitoSans"),
        ),
      ],
    );
  }
}
