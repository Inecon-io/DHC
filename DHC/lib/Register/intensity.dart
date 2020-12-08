import 'package:DHC/Register/analgesics.dart';
import 'package:flutter/material.dart';
import 'package:DHC/globalVariables.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:google_fonts/google_fonts.dart';

class Intensity extends StatefulWidget {
  @override
  _Intensity createState() => _Intensity();
}

class _Intensity extends State<Intensity> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    //future:
    //Firebase.initializeApp();

    final describe = Text(
      'Smerternes styrke',
      textAlign: TextAlign.center,
      style: GoogleFonts.montserrat(fontSize: 35, color: Colors.white),
    );
    final question = Text(
      'Hvor stærke har dine smerter samlet set været det seneste døgn?',
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

    final oneButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(15.0),
      color: colorOne,
      child: MaterialButton(
        minWidth: mq.size.width / 3.2,
        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        child: Text(
          "1",
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
            fontSize: 20.0,
            color: Colors.black,
          ),
        ),
        onPressed: () async {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Analgesics(),
            ),
          );
        },
      ),
    );
    final threeButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(15.0),
      color: colorThree,
      child: MaterialButton(
        minWidth: mq.size.width / 3.2,
        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        child: Text(
          "3",
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
            fontSize: 20.0,
            color: Colors.black,
          ),
        ),
        onPressed: () async {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Analgesics(),
            ),
          );
        },
      ),
    );
    final fiveButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(15.0),
      color: colorFive,
      child: MaterialButton(
        minWidth: mq.size.width / 3.2,
        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        child: Text(
          "5",
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
            fontSize: 20.0,
            color: Colors.black,
          ),
        ),
        onPressed: () async {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Analgesics(),
            ),
          );
        },
      ),
    );
    final sevenButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(15.0),
      color: colorSeven,
      child: MaterialButton(
        minWidth: mq.size.width / 3.2,
        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        child: Text(
          "7",
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
            fontSize: 20.0,
            color: Colors.black,
          ),
        ),
        onPressed: () async {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Analgesics(),
            ),
          );
        },
      ),
    );
    final nineButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(15.0),
      color: colorNine,
      child: MaterialButton(
        minWidth: mq.size.width / 3.2,
        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        child: Text(
          "9",
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
            fontSize: 20.0,
            color: Colors.black,
          ),
        ),
        onPressed: () async {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Analgesics(),
            ),
          );
        },
      ),
    );
    final twoButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(15.0),
      color: colorTwo,
      child: MaterialButton(
        minWidth: mq.size.width / 3.2,
        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        child: Text(
          "2",
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
            fontSize: 20.0,
            color: Colors.black,
          ),
        ),
        onPressed: () async {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Analgesics(),
            ),
          );
        },
      ),
    );
    final fourButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(15.0),
      color: colorFour,
      child: MaterialButton(
        minWidth: mq.size.width / 3.2,
        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        child: Text(
          "4",
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
            fontSize: 20.0,
            color: Colors.black,
          ),
        ),
        onPressed: () async {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Analgesics(),
            ),
          );
        },
      ),
    );
    final sixButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(15.0),
      color: colorSix,
      child: MaterialButton(
        minWidth: mq.size.width / 3.2,
        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        child: Text(
          "6",
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
            fontSize: 20.0,
            color: Colors.black,
          ),
        ),
        onPressed: () async {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Analgesics(),
            ),
          );
        },
      ),
    );
    final eightButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(15.0),
      color: colorEight,
      child: MaterialButton(
        minWidth: mq.size.width / 3.2,
        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        child: Text(
          "8",
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
            fontSize: 20.0,
            color: Colors.black,
          ),
        ),
        onPressed: () async {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Analgesics(),
            ),
          );
        },
      ),
    );
    final tenButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(15.0),
      color: colorTen,
      child: MaterialButton(
        minWidth: mq.size.width / 3.2,
        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        child: Text(
          "10",
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
            fontSize: 20.0,
            color: Colors.black,
          ),
        ),
        onPressed: () async {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Analgesics(),
            ),
          );
        },
      ),
    );
    final leftbuttons = Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          oneButton,
          SizedBox(height: 20),
          threeButton,
          SizedBox(height: 20),
          fiveButton,
          SizedBox(height: 20),
          sevenButton,
          SizedBox(height: 20),
          nineButton,
        ],
      ),
    );
    final rightbuttons = Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          twoButton,
          SizedBox(height: 20),
          fourButton,
          SizedBox(height: 20),
          sixButton,
          SizedBox(height: 20),
          eightButton,
          SizedBox(height: 20),
          tenButton,
        ],
      ),
    );
    final buttons = Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[leftbuttons, SizedBox(width: 20), rightbuttons],
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
