import 'package:flutter/material.dart';
import 'package:DHC/Information/info.dart';
import 'package:DHC/Register/unfilledDays.dart';
import 'package:DHC/MyProfile/pOverview.dart';
import 'package:DHC/Overview/oMenu.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'asset/appicon/AppLogo.png',
                    fit: BoxFit.contain,
                    height: 30,
                  ),
                ],
              ),
              iconTheme: IconThemeData(
                color: Colors.black, //change your color here
              ),
              backgroundColor: Colors.white,
            ),
            body: Column(
              children: [
                SizedBox(height: 20),
                HeaderTitleClass(),
                SizedBox(height: 100),
              ],
            )));
  }
}

class HeaderTitleClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Hovedpinekalender',
          style: TextStyle(fontSize: 25, fontFamily: "NunitoSansBold"),
        ),
      ],
    );
  }
}

class PickMenuClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '\t Vælg menu',
          style: TextStyle(fontSize: 20, fontFamily: "NunitoSansBold"),
        ),
      ],
    );
  }
}

class SmallText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '\t Du kan altid komme tilbage',
          style: TextStyle(fontSize: 15, fontFamily: "NunitoSans"),
        ),
      ],
    );
  }
}

class BeforeWork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonTheme(
          minWidth: 300.0,
          height: 50.0,
          child: RaisedButton(
            color: Colors.white,
            shape: new RoundedRectangleBorder(
              side: BorderSide(color: Color(0xfffb8900)),
              borderRadius: new BorderRadius.circular(30.0),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => POverview()),
              );
            },
            child: const Text('Før arbejde',
                style: TextStyle(fontSize: 20, fontFamily: "NunitoSans")),
          ),
        ),
        ButtonTheme(
          minWidth: 300.0,
          height: 50.0,
          child: RaisedButton(
            color: Colors.white,
            shape: new RoundedRectangleBorder(
              side: BorderSide(color: Color(0xfffb8900)),
              borderRadius: new BorderRadius.circular(30.0),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RUnfilledDays()),
              );
            },
            child: const Text('Før arbejde',
                style: TextStyle(fontSize: 20, fontFamily: "NunitoSans")),
          ),
        ),
        ButtonTheme(
          minWidth: 300.0,
          height: 50.0,
          child: RaisedButton(
            color: Colors.white,
            shape: new RoundedRectangleBorder(
              side: BorderSide(color: Color(0xfffb8900)),
              borderRadius: new BorderRadius.circular(30.0),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OMenu()),
              );
            },
            child: const Text('Før arbejde',
                style: TextStyle(fontSize: 20, fontFamily: "NunitoSans")),
          ),
        ),
        ButtonTheme(
          minWidth: 300.0,
          height: 50.0,
          child: RaisedButton(
            color: Colors.white,
            shape: new RoundedRectangleBorder(
              side: BorderSide(color: Color(0xfffb8900)),
              borderRadius: new BorderRadius.circular(30.0),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Information()),
              );
            },
            child: const Text('Før arbejde',
                style: TextStyle(fontSize: 20, fontFamily: "NunitoSans")),
          ),
        ),
      ],
    );
  }
}
