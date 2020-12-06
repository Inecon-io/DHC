import 'package:DHC/Register/typeAnalgesics.dart';
import 'package:flutter/material.dart';
import 'package:DHC/globalVariables.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:google_fonts/google_fonts.dart';

class Analgesics extends StatefulWidget {
  @override
  _Analgesics createState() => _Analgesics();
}

class _Analgesics extends State<Analgesics> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    //future:
    //

    final describe = Text(
      'Smertestillende',
      textAlign: TextAlign.center,
      style: GoogleFonts.montserrat(fontSize: 35, color: Colors.white),
    );
    final question = Text(
      'Har du taget nogen form for akut smertestillende de sidste 24 timer?',
      textAlign: TextAlign.center,
      style: GoogleFonts.montserrat(fontSize: 20, color: Colors.white),
    );

    final fields = Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[describe, question],
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
              builder: (context) => TypeAnalgesics(),
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
                YesNo(),
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

class YesNo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      TapboxA(),
    ]);
  }
}

class TapboxA extends StatefulWidget {
  TapboxA({Key key}) : super(key: key);

  @override
  _TapboxAState createState() => _TapboxAState();
}

class _TapboxAState extends State<TapboxA> {
  List<bool> _isSelected = [false, false];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ToggleButtons(
        children: <Widget>[
          Container(
            width: (MediaQuery.of(context).size.width - 36) / 3,
            child: Center(
              child: Text(
                _isSelected[0] ? 'NEJ' : 'NEJ',
                style: _isSelected[0]
                    ? TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                        fontFamily: "MontSerrat")
                    : TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                        fontFamily: "MontSerrat"),
              ),
            ),
          ),
          Container(
            width: (MediaQuery.of(context).size.width - 36) / 3,
            child: Center(
              child: Text(
                _isSelected[1] ? 'JA' : 'JA',
                style: _isSelected[1]
                    ? TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                        fontFamily: "MontSerrat")
                    : TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                        fontFamily: "MontSerrat"),
              ),
            ),
          ),
        ],
        isSelected: _isSelected,

        onPressed: (int index) async {
          final prefs = await SharedPreferences.getInstance();

          setState(() {
            if (_isSelected[0] == false && _isSelected[1] == false) {
              _isSelected[index] = !_isSelected[index];
            } else if (_isSelected[0] == false) {
              if (_isSelected[1] == true) {
                _isSelected[1] = !_isSelected[1];
              }

              _isSelected[index] = !_isSelected[index];
            } else if (_isSelected[1] == false) {
              if (_isSelected[0] == true) {
                _isSelected[0] = !_isSelected[0];
              }

              _isSelected[index] = !_isSelected[index];
            }
            if (_isSelected[0] == true) {
              prefs.setString('AnalgesicYN', "Nej");
            } else if (_isSelected[1] == true) {
              prefs.setString('AnalgesicYN', "Ja");
            } else {
              prefs.setString('AnalgesicYN', "0");
            }
            //
          });
        },
        // region example 1
        color: DHCGray,
        selectedColor: DHCGreen,
        fillColor: DHCGreen,
        // endregion
        // region example 2
        borderColor: DHCGreen,
        selectedBorderColor: DHCGreen,
        borderRadius: BorderRadius.all(Radius.circular(25)),
        // endregion
      ),
    );
  }
}
