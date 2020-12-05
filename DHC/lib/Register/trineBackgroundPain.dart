import 'package:DHC/Register/trineBackgroundPainYN.dart';
import 'package:flutter/material.dart';
import 'package:DHC/globalVariables.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BackGroundPain extends StatefulWidget {
  @override
  _BackGroundPain createState() => _BackGroundPain();
}

class _BackGroundPain extends State<BackGroundPain> {
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

    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(25.0),
      color: DHCGray,
      child: MaterialButton(
        minWidth: mq.size.width / 1.2,
        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        child: Text(
          "Log ind",
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
              builder: (context) => BackGroundPainYN(),
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
                loginButton,
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
