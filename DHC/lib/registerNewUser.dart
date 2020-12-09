import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

import 'home.dart';
import 'globalVariables.dart';

class UserRegister extends StatefulWidget {
  @override
  _UserRegister createState() => _UserRegister();
}

class _UserRegister extends State<UserRegister> {
  bool _showPassword = false;
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _passwordController1 = TextEditingController();
  TextEditingController _novotiPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    future:
    Firebase.initializeApp();
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
        labelStyle: TextStyle(fontFamily: "NunitoSans", color: Colors.grey),
        hintText: 'email',
        hintStyle: TextStyle(fontFamily: "NunitoSans", color: Colors.black),
      ),
    );

    final passwordField = Column(
      children: <Widget>[
        TextFormField(
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
              borderSide: BorderSide(color: Color(0xfffb8900), width: 2.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              borderSide: BorderSide(color: Colors.black, width: 1.0),
            ),
            labelText: 'password',
            labelStyle: TextStyle(fontFamily: "NunitoSans", color: Colors.grey),
            hintText: 'password',
            hintStyle: TextStyle(fontFamily: "NunitoSans", color: Colors.black),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(2.0),
        ),
      ],
    );

    final passwordField1 = Column(
      children: <Widget>[
        TextFormField(
          controller: _passwordController1,
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
              borderSide: BorderSide(color: Color(0xfffb8900), width: 2.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              borderSide: BorderSide(color: Colors.black, width: 1.0),
            ),
            labelText: 'gentag password',
            labelStyle: TextStyle(fontFamily: "NunitoSans", color: Colors.grey),
            hintText: 'gentag password',
            hintStyle: TextStyle(fontFamily: "NunitoSans", color: Colors.black),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(2.0),
        ),
      ],
    );

    final nameField = TextFormField(
      controller: _nameController,
      keyboardType: TextInputType.text,
      style: TextStyle(
        color: Colors.black,
      ),
      cursorColor: Colors.black,
      decoration: InputDecoration(
        suffixIcon: Icon(
          Icons.person,
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
        labelText: 'Dit navn',
        labelStyle: TextStyle(fontFamily: "NunitoSans", color: Colors.grey),
        hintText: 'Fulde navn',
        hintStyle: TextStyle(fontFamily: "NunitoSans", color: Colors.black),
      ),
    );

    final novotiCode = TextFormField(
      controller: _novotiPassword,
      keyboardType: TextInputType.number,
      style: TextStyle(
        color: Colors.black,
      ),
      cursorColor: Colors.black,
      decoration: InputDecoration(
        suffixIcon: Icon(
          Icons.panorama_fish_eye,
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
        labelText: 'Novotikode',
        labelStyle: TextStyle(fontFamily: "NunitoSans", color: Colors.grey),
        hintText: 'novotikode',
        hintStyle: TextStyle(fontFamily: "NunitoSans", color: Colors.black),
      ),
    );

    final fields = Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          emailField,
          SizedBox(height: 20),
          nameField,
          SizedBox(height: 20),
          passwordField,
          SizedBox(height: 20),
          passwordField1,
          SizedBox(height: 20),
        ],
      ),
    );

    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(25.0),
      color: DHCGray,
      child: MaterialButton(
        minWidth: mq.size.width / 1.2,
        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        child: Text(
          "Opret",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            fontFamily: "NunitoSansBold",
          ),
        ),
        onPressed: () async {
          if (_passwordController1.text != _passwordController.text) {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    content: Container(
                      child: Text(
                          "Din gentagelse af passwordet \n er ikke korrekt"),
                    ),
                  );
                });
          } else {
            try {
              // ignore: deprecated_member_use
              final User user =
                  (await FirebaseAuth.instance.createUserWithEmailAndPassword(
                email: _emailController.text,
                password: _passwordController.text,
              ))
                      .user;
              if (user != null) {
                CollectionReference users =
                    FirebaseFirestore.instance.collection('Users');
                // Call the user's CollectionReference to add a new user
                users
                    .add({
                      "Navn": _nameController.text,
                      "email": _emailController.text,
                    })
                    .then((value) => print("User Added"))
                    .catchError((error) => print("Failed to add user: $error"));

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              }
            } catch (e) {
              print(e);
              String error = e.toString();
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      content: Container(
                        child: Text(error),
                      ),
                    );
                  });

              _emailController.text = "";
              _passwordController.text = "";
            }
          }
        },
      ),
    );

    final bottom = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        loginButton,
        Padding(
          padding: EdgeInsets.all(8.0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            MaterialButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                prefs.setString("Name", _nameController.text);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
            ),
          ],
        ),
      ],
    );

    return Scaffold(
      backgroundColor: Colors.white,
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
                Padding(
                  padding: EdgeInsets.only(bottom: 150),
                  child: bottom,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
