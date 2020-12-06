import 'package:DHC/Register/intensity.dart';
import 'package:flutter/material.dart';
import 'package:DHC/globalVariables.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:google_fonts/google_fonts.dart';

class Duration extends StatefulWidget {
  @override
  _Duration createState() => _Duration();
}

class _Duration extends State<Duration> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    //future:
    //Firebase.initializeApp();
    void showAlertDialog(BuildContext context) {}
    final describe = Text(
      'Varighed',
      textAlign: TextAlign.center,
      style: GoogleFonts.montserrat(fontSize: 35, color: Colors.white),
    );
    final question = Text(
      'Hvor mange timer har du haft hovedpine de sidste 24 timer?',
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
              builder: (context) => Intensity(),
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
                MyStatefulWidget(),
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

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dropdownValue = 'Vælg';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(Icons.arrow_downward),
      iconSize: 24,
      iconEnabledColor: DHCGreen,
      elevation: 20,
      dropdownColor: DHCGray,
      style: TextStyle(color: DHCGreen, fontSize: 20),
      underline: Container(
        height: 2,
        color: DHCGreen,
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>[
        'Vælg',
        '1 time',
        '2 timer',
        '3 timer',
        '4 timer',
        '5 timer',
        '6 timer',
        '7 timer',
        '8 timer',
        '9 timer',
        '10 timer',
        '11 timer',
        '12 timer',
        '13 timer',
        '14 timer',
        '15 timer',
        '16 timer',
        '17 timer',
        '18 timer',
        '19 timer',
        '20 timer',
        '21 timer',
        '22 timer',
        '23 timer',
        '24 timer'
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
