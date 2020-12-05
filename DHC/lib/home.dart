import 'package:flutter/material.dart';
import 'package:DHC/Information/info.dart';
import 'package:DHC/Register/unfilledDays.dart';
import 'package:DHC/MyProfile/pOverview.dart';
import 'package:DHC/Overview/oMenu.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:DHC/globalVariables.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    //future:
    //Firebase.initializeApp();
    void showAlertDialog(BuildContext context) {}

    final fields = Padding(
      padding: EdgeInsets.only(top: 100.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[],
      ),
    );

    //double screenwidth = MediaQuery.of(context).size.width;

    final myProfile = FlatButton(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        height: 50,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => POverview()),
          );
        },
        padding: EdgeInsets.all(0),
        child: Image.asset('assets/Menu_1.png'));
    final register = FlatButton(
        height: 50,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => UnFilledDays()),
          );
        },
        padding: EdgeInsets.all(0),
        child: Image.asset('assets/Menu_2.png'));
    final overview = FlatButton(
        height: 50,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => OMenu()),
          );
        },
        child: Image.asset('assets/Menu_3.png'));
    final info = FlatButton(
        height: 50,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Information()),
          );
        },
        child: Image.asset('assets/Menu_4.png'));
    return Scaffold(
      backgroundColor: backgroundColorDHC,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                fields,
                myProfile,
                register,
                overview,
                info,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
