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

    final emailField = TextFormField(
      controller: _emailController,
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(
        color: Colors.black,
      ),
      cursorColor: Colors.black,
      decoration: InputDecoration(
        suffixIcon: Icon(
          Icons.email,
          color: Colors.grey,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          borderSide: BorderSide(color: Color(0xfffb8900), width: 2.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          borderSide: BorderSide(color: Colors.black, width: 1.0),
        ),
        labelText: 'mail@mail.dk',
        labelStyle: TextStyle(fontFamily: "MontSerrat", color: Colors.grey),
        hintText: 'email',
        hintStyle: TextStyle(fontFamily: "MontSerrat", color: Colors.black),
      ),
    );

    final passwordField = Column(
      children: <Widget>[
        TextFormField(
          obscureText: true,
          controller: _passwordController,
          style: TextStyle(
            color: Colors.black,
          ),
          cursorColor: Colors.black,
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
              borderSide: BorderSide(color: DHCGreen, width: 2.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              borderSide: BorderSide(color: Colors.black, width: 1.0),
            ),
            labelText: 'password',
            labelStyle: TextStyle(fontFamily: "MontSerrat", color: Colors.grey),
            hintText: 'password',
            hintStyle: TextStyle(fontFamily: "MontSerrat", color: Colors.black),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(2.0),
        ),
      ],
    );

    final fields = Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 50),
          emailField,
          SizedBox(height: 20),
          passwordField,
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
