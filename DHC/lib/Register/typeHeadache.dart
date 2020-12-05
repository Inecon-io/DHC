import 'package:DHC/Register/trineAttacks.dart';
import 'package:DHC/Register/clusterAttacks.dart';
import 'package:DHC/Register/duration.dart';
import 'package:flutter/material.dart';
import 'package:DHC/globalVariables.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TypeHeadache extends StatefulWidget {
  @override
  _TypeHeadache createState() => _TypeHeadache();
}

class _TypeHeadache extends State<TypeHeadache> {
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

    final fields = Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 50),
          SizedBox(height: 20),
        ],
      ),
    );

    final migreane = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(25.0),
      color: DHCGray,
      child: MaterialButton(
        minWidth: mq.size.width / 1.2,
        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        child: Text(
          "Migræne",
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
              builder: (context) => Duration(),
            ),
          );
        },
      ),
    );
    final tension = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(25.0),
      color: DHCGray,
      child: MaterialButton(
        minWidth: mq.size.width / 1.2,
        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        child: Text(
          "Spændingshovedpine",
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
              builder: (context) => Duration(),
            ),
          );
        },
      ),
    );
    final cluster = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(25.0),
      color: DHCGray,
      child: MaterialButton(
        minWidth: mq.size.width / 1.2,
        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        child: Text(
          "Klynge hovedpine",
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
              builder: (context) => Attacks(),
            ),
          );
        },
      ),
    );
    final trigeminus_neuralgi = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(25.0),
      color: DHCGray,
      child: MaterialButton(
        minWidth: mq.size.width / 1.2,
        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        child: Text(
          "Trigeminus Neuralgi",
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
              builder: (context) => AttacksTriNe(),
            ),
          );
        },
      ),
    );
    final other = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(25.0),
      color: DHCGray,
      child: MaterialButton(
        minWidth: mq.size.width / 1.2,
        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        child: Text(
          "Anden",
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
              builder: (context) => Duration(),
            ),
          );
        },
      ),
    );

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        backgroundColor: DHCGray,
      ),
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
                migreane,
                tension,
                trigeminus_neuralgi,
                other,
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
