import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Position _currentPosition;
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
                SizedBox(height: 30),
                PickMenuClass(),
                SmallText(),
                SizedBox(height: 70),
                BeforeWork(),
                SizedBox(height: 20),
                AfterWork(),
                SizedBox(height: 20),
                Manager(),
                SizedBox(height: 100),
              ],
            )));
  }
}

class HeaderTitleClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '\t Velkommen',
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
                MaterialPageRoute(builder: (context) => Introduction()),
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

class AfterWork extends StatelessWidget {
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
                MaterialPageRoute(builder: (context) => Goodbye()),
              );
            },
            child: const Text('Efter arbejde',
                style: TextStyle(fontSize: 20, fontFamily: "NunitoSans")),
          ),
        ),
      ],
    );
  }
}

class Manager extends StatelessWidget {
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
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
            child: const Text('Butiksmanager',
                style: TextStyle(fontSize: 20, fontFamily: "NunitoSans")),
          ),
        ),
      ],
    );
  }
}
