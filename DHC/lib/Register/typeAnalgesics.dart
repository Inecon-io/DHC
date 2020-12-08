import 'package:DHC/Register/prepAnalgesics.dart';
import 'package:flutter/material.dart';
import 'package:DHC/globalVariables.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:google_fonts/google_fonts.dart';

class TypeAnalgesics extends StatefulWidget {
  @override
  _TypeAnalgesics createState() => _TypeAnalgesics();
}

bool buttonState = true;

class _TypeAnalgesics extends State<TypeAnalgesics> {
  final _formKey = GlobalKey<FormState>();
  void _buttonChange() {
    setState(() {
      buttonState = !buttonState;
    });
  }

  bool weakanalgesicbool = false;
  bool triptanebool = false;
  bool dontknowbool = false;
  bool combinationbool = false;
  bool stronganalgesicbool = false;
  bool oxygenbool = false;
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    //future:
    //Firebase.initializeApp();
    void showAlertDialog(BuildContext context) {}
    final describe = Text(
      'Type af smertestillende',
      textAlign: TextAlign.center,
      style: GoogleFonts.montserrat(fontSize: 35, color: Colors.white),
    );
    final question = Text(
      'Vælg typer af smerte-stillende du har benyttet',
      textAlign: TextAlign.center,
      style: GoogleFonts.montserrat(fontSize: 20, color: Colors.white),
    );
    final fields = Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          describe,
          SizedBox(height: 20),
          question,
          SizedBox(height: 20),
        ],
      ),
    );
    final weakAnalgesics = ButtonTheme(
      minWidth: 250.0,
      height: 50.0,
      child: RaisedButton(
        child: new Text('Svage smertestillende'),
        textColor: Colors.white,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(15.0),
        ),
        color: weakanalgesicbool ? DHCGreen : DHCGray,
        onPressed: () async =>
            setState(() => weakanalgesicbool = !weakanalgesicbool),
      ),
    );
    final triptanes = ButtonTheme(
      minWidth: 250.0,
      height: 50.0,
      child: RaisedButton(
        child: new Text('Triptaner'),
        textColor: Colors.white,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(15.0),
        ),
        color: triptanebool ? DHCGreen : DHCGray,
        onPressed: () async => setState(() => triptanebool = !triptanebool),
      ),
    );
    final combination = ButtonTheme(
      minWidth: 250.0,
      height: 50.0,
      child: RaisedButton(
        child: new Text('Kombinations medicin'),
        textColor: Colors.white,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(15.0),
        ),
        color: combinationbool ? DHCGreen : DHCGray,
        onPressed: () async =>
            setState(() => combinationbool = !combinationbool),
      ),
    );

    final stronganalgesics = ButtonTheme(
      minWidth: 250.0,
      height: 50.0,
      child: RaisedButton(
        child: new Text('Stærke smertestillende'),
        textColor: Colors.white,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(15.0),
        ),
        color: stronganalgesicbool ? DHCGreen : DHCGray,
        onPressed: () async =>
            setState(() => stronganalgesicbool = !stronganalgesicbool),
      ),
    );
    final oxygen = ButtonTheme(
      minWidth: 250.0,
      height: 50.0,
      child: RaisedButton(
        child: new Text('Ilt'),
        textColor: Colors.white,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(15.0),
        ),
        color: oxygenbool ? DHCGreen : DHCGray,
        onPressed: () async => setState(() => oxygenbool = !oxygenbool),
      ),
    );

    final dontknow = ButtonTheme(
      minWidth: 250.0,
      height: 50.0,
      child: RaisedButton(
        child: new Text('Ved ikke'),
        textColor: Colors.white,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(15.0),
        ),
        color: dontknowbool ? DHCGreen : DHCGray,
        onPressed: () async => setState(() => dontknowbool = !dontknowbool),
      ),
    );

    final buttons = Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          weakAnalgesics,
          SizedBox(height: 20),
          triptanes,
          SizedBox(height: 20),
          combination,
          SizedBox(height: 20),
          stronganalgesics,
          SizedBox(height: 20),
          oxygen,
          SizedBox(height: 20),
          dontknow
        ],
      ),
    );
    final nextButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(25.0),
      color: DHCGreen,
      child: MaterialButton(
        minWidth: mq.size.width / 1.2,
        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        child: Text(
          "Næste",
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
        onPressed: () async {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PrepAnalgesics(),
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
                buttons,
                nextButton,
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
