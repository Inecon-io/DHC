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
                Smileys(),
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

class Smileys extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
  List<bool> _isSelected = [false, false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ToggleButtons(
        children: <Widget>[
          Container(
            width: 30.0,
            height: 30.0,
            color: _isSelected[0] ? DHCGray : DHCGreen,
          ),
          Container(
            width: 30.0,
            height: 30.0,
            decoration: BoxDecoration(
                image: _isSelected[1]
                    ? DecorationImage(
                        image: AssetImage("asset/Buttons/2_selected.png"),
                      )
                    : DecorationImage(
                        image: AssetImage('asset/Buttons/2_unselected.png'),
                      )),
          ),
          Container(
            width: 30.0,
            height: 30.0,
            decoration: BoxDecoration(
                image: _isSelected[2]
                    ? DecorationImage(
                        image: AssetImage("asset/Buttons/3_selected.png"),
                      )
                    : DecorationImage(
                        image: AssetImage('asset/Buttons/3_unselected.png'),
                      )),
          ),
          Container(
            width: 30.0,
            height: 30.0,
            decoration: BoxDecoration(
                image: _isSelected[3]
                    ? DecorationImage(
                        image: AssetImage("asset/Buttons/4_selected.png"),
                      )
                    : DecorationImage(
                        image: AssetImage('asset/Buttons/4_unselected.png'),
                      )),
          ),
          Container(
            width: 30.0,
            height: 30.0,
            decoration: BoxDecoration(
                image: _isSelected[4]
                    ? DecorationImage(
                        image: AssetImage("asset/Buttons/5_selected.png"),
                      )
                    : DecorationImage(
                        image: AssetImage('asset/Buttons/5_unselected.png'),
                      )),
          ),
        ],
        isSelected: _isSelected,

        onPressed: (int index) async {
          final prefs = await SharedPreferences.getInstance();

          setState(() {
            if (_isSelected[0] == false &&
                _isSelected[1] == false &&
                _isSelected[2] == false &&
                _isSelected[3] == false &&
                _isSelected[4] == false) {
              _isSelected[index] = !_isSelected[index];
            } else if (_isSelected[0] == false) {
              if (_isSelected[1] == true) {
                _isSelected[1] = !_isSelected[1];
              }
              if (_isSelected[2] == true) {
                _isSelected[2] = !_isSelected[2];
              }
              if (_isSelected[3] == true) {
                _isSelected[3] = !_isSelected[3];
              }
              if (_isSelected[4] == true) {
                _isSelected[4] = !_isSelected[4];
              }
              _isSelected[index] = !_isSelected[index];
            } else if (_isSelected[1] == false) {
              if (_isSelected[0] == true) {
                _isSelected[0] = !_isSelected[0];
              }
              if (_isSelected[2] == true) {
                _isSelected[2] = !_isSelected[2];
              }
              if (_isSelected[3] == true) {
                _isSelected[3] = !_isSelected[3];
              }
              if (_isSelected[4] == true) {
                _isSelected[4] = !_isSelected[4];
              }
              _isSelected[index] = !_isSelected[index];
            } else if (_isSelected[2] == false) {
              if (_isSelected[0] == true) {
                _isSelected[0] = !_isSelected[0];
              }
              if (_isSelected[1] == true) {
                _isSelected[1] = !_isSelected[1];
              }
              if (_isSelected[3] == true) {
                _isSelected[3] = !_isSelected[3];
              }
              if (_isSelected[4] == true) {
                _isSelected[4] = !_isSelected[4];
                _isSelected[index] = !_isSelected[index];
              }
            } else if (_isSelected[3] == false) {
              if (_isSelected[0] == true) {
                _isSelected[0] = !_isSelected[0];
              }
              if (_isSelected[1] == true) {
                _isSelected[1] = !_isSelected[1];
              }
              if (_isSelected[2] == true) {
                _isSelected[2] = !_isSelected[2];
              }
              if (_isSelected[4] == true) {
                _isSelected[4] = !_isSelected[4];
              }
              _isSelected[index] = !_isSelected[index];
            } else if (_isSelected[4] == false) {
              if (_isSelected[0] == true) {
                _isSelected[0] = !_isSelected[0];
              }
              if (_isSelected[1] == true) {
                _isSelected[1] = !_isSelected[1];
              }
              if (_isSelected[2] == true) {
                _isSelected[2] = !_isSelected[2];
              }
              if (_isSelected[3] == true) {
                _isSelected[3] = !_isSelected[3];
              }
              _isSelected[index] = !_isSelected[index];
            }
            if (_isSelected[0] == true) {
              prefs.setString('Mevalutionday', "1");
            } else if (_isSelected[1] == true) {
              prefs.setString('Mevalutionday', "2");
            } else if (_isSelected[2] == true) {
              prefs.setString('Mevalutionday', "3");
            } else if (_isSelected[3] == true) {
              prefs.setString('Mevalutionday', "4");
            } else if (_isSelected[4] == true) {
              prefs.setString('Mevalutionday', "5");
            } else {
              prefs.setString('Mevalutionday', "0");
            }
          });
        },
        // region example 1
        // endregion
        // region example 2
        // endregion
        fillColor: Colors.transparent,
        // endregion
        // region example 2
        borderColor: Colors.transparent,
        selectedBorderColor: Colors.transparent,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    );
  }
}
