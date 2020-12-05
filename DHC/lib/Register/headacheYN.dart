import 'package:DHC/Register/typeHeadache.dart';
import 'package:flutter/material.dart';
import 'package:DHC/globalVariables.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HeadacheYN extends StatefulWidget {
  @override
  _HeadacheYN createState() => _HeadacheYN();
}

class _HeadacheYN extends State<HeadacheYN> {
  bool _showPassword = false;
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    //future:
    //Firebase.initializeApp();
    void showAlertDialog(BuildContext context) {}
    final describe = Text(
      'Hovedpine',
      style: TextStyle(
          fontSize: 35, fontFamily: "MontSerrat", color: Colors.white),
    );
    final question = Text(
      'Har du haft hovedpine eller ansigtssmerter det sidste døgn?',
      style: TextStyle(
          fontSize: 25, fontFamily: "MontSerrat", color: Colors.white),
    );

    final fields = Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          describe,
          SizedBox(height: 50),
          SizedBox(height: 20),
        ],
      ),
    );

    final yesButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(25.0),
      color: DHCGray,
      child: MaterialButton(
        minWidth: mq.size.width / 1.2,
        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        child: Text(
          "Ja",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.0,
            color: DHCGreen,
            fontFamily: "MontSerrat",
          ),
        ),
        onPressed: () async {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TypeHeadache(),
            ),
          );
        },
      ),
    );

    final noButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(25.0),
      color: DHCGray,
      child: MaterialButton(
        minWidth: mq.size.width / 1.2,
        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        child: Text(
          "Nej",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.0,
            color: DHCGreen,
            fontFamily: "MontSerrat",
          ),
        ),
        onPressed: () async {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TypeHeadache(),
            ),
          );
        },
      ),
    );

    return Scaffold(
      backgroundColor: backgroundColorDHC,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(36),
          child: Container(
            height: mq.size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                fields,
                yesButton,
                noButton,
                Padding(
                  padding: EdgeInsets.only(bottom: 150),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
