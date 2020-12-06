import 'package:DHC/home.dart';
import 'package:flutter/material.dart';
import 'package:DHC/globalVariables.dart';
import 'package:google_fonts/google_fonts.dart';

class Information extends StatefulWidget {
  @override
  _Information createState() => _Information();
}

class _Information extends State<Information> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    //future:
    //Firebase.initializeApp();
    void showAlertDialog(BuildContext context) {}
    final header = Text(
      'Information',
      textAlign: TextAlign.center,
      style: GoogleFonts.montserrat(fontSize: 35, color: Colors.white),
    );
    final subheader = Text(
      'Velkommen til \n DHC \n Hovedpine kalender',
      textAlign: TextAlign.center,
      style: GoogleFonts.montserrat(fontSize: 25, color: Colors.white),
    );

    final infotext = Text(
      'Her kan du registrere dage med hovedpine og smertestillende medicin. Appen gør det nemt at få et overblik. Du vil dagligt få en påmindelse om udfyldning. Ved spørsgmål kontakt Louise på louise.ninett.carlsen@regionh.dk',
      textAlign: TextAlign.center,
      style: GoogleFonts.montserrat(fontSize: 20, color: Colors.white),
    );
    final fields = Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          header,
          SizedBox(height: 20),
          subheader,
          SizedBox(height: 20),
          infotext,
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
          "Hovedmenu",
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
              builder: (context) => HomePage(),
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
