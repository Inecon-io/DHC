import 'package:flutter/material.dart';
import 'package:DHC/Information/info.dart';
import 'package:DHC/Register/unfilledDays.dart';
import 'package:DHC/MyProfile/pOverview.dart';
import 'package:DHC/Overview/oMenu.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:DHC/globalVariables.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageScroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(padding: EdgeInsets.only(top: 70.0), children: <Widget>[
      UnderText(),
      SizedBox(height: 100),
      NextButton(),
    ]);
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColorDHC, body: HomePageScroll());
  }
}

class NextButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FlatButton(
            padding: EdgeInsets.zero,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            height: 50,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => POverview()),
              );
            },
            child: Image.asset('assets/Menu_1.png')),
        FlatButton(
            padding: EdgeInsets.zero,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            height: 50,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UnFilledDays()),
              );
            },
            child: Image.asset('assets/Menu_2.png')),
        FlatButton(
            padding: EdgeInsets.zero,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            height: 50,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OMenu()),
              );
            },
            child: Image.asset('assets/Menu_3.png')),
        FlatButton(
            padding: EdgeInsets.zero,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            height: 50,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Information()),
              );
            },
            child: Image.asset('assets/Menu_4.png')),
      ],
    );
  }
}

class UnderText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: 20),
        Text(
          'Hovedpine \nkalenderen',
          style: GoogleFonts.montserrat(fontSize: 35, color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
