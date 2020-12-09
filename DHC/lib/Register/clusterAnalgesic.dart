import 'package:DHC/Register/intensity.dart';
import 'package:flutter/material.dart';
import 'package:DHC/globalVariables.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:google_fonts/google_fonts.dart';

class ClusterAnalgesics extends StatefulWidget {
  @override
  _ClusterAnalgesics createState() => _ClusterAnalgesics();
}

class _ClusterAnalgesics extends State<ClusterAnalgesics> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    //future:
    //Firebase.initializeApp();
    void showAlertDialog(BuildContext context) {}

    final question = Text(
      'Hvor mange gange anvendte du:',
      textAlign: TextAlign.center,
      style: GoogleFonts.montserrat(fontSize: 20, color: Colors.white),
    );

    final fields = Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          question,
          SizedBox(height: 20),
        ],
      ),
    );
    final oxygen = Text(
      'Ilt',
      textAlign: TextAlign.center,
      style: GoogleFonts.montserrat(fontSize: 20, color: Colors.white),
    );
    final questions = Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          oxygen,
          SizedBox(width: 40),
          OxygenPicker(),
          SizedBox(height: 20),
        ],
      ),
    );
    final imigran = Text(
      'Imigran',
      textAlign: TextAlign.center,
      style: GoogleFonts.montserrat(fontSize: 20, color: Colors.white),
    );
    final imigranQuestion = Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          imigran,
          SizedBox(width: 40),
          ImigranPicker(),
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
          final prefs = await SharedPreferences.getInstance();
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
                questions,
                imigranQuestion,
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

class OxygenPicker extends StatefulWidget {
  OxygenPicker({Key key}) : super(key: key);

  @override
  _OxygenPicker createState() => _OxygenPicker();
}

/// This is the private State class that goes with MyStatefulWidget.
class _OxygenPicker extends State<OxygenPicker> {
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
        '0 gange',
        '1 gange',
        '2 gange',
        '3 gange',
        '4 gange',
        '5 gange',
        '6 gange',
        '7 gange',
        '8 gange',
        '9 gange',
        '10 gange',
        '11 gange',
        '12 gange',
        '13 gange',
        '14 gange',
        '15 gange',
        '16 gange',
        '17 gange',
        '18 gange',
        '19 gange',
        '20 gange',
        'Mere end 20 gange',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class ImigranPicker extends StatefulWidget {
  ImigranPicker({Key key}) : super(key: key);

  @override
  _ImigranPicker createState() => _ImigranPicker();
}

/// This is the private State class that goes with MyStatefulWidget.
class _ImigranPicker extends State<ImigranPicker> {
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
        '0 gange',
        '1 gange',
        '2 gange',
        '3 gange',
        '4 gange',
        '5 gange',
        '6 gange',
        '7 gange',
        '8 gange',
        '9 gange',
        '10 gange',
        'Mere end 10 gange',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
