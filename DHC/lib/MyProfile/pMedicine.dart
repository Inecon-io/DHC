import 'package:flutter/material.dart';
import 'package:DHC/globalVariables.dart';

class PMedicineScroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(padding: const EdgeInsets.all(8), children: <Widget>[
      SizedBox(height: 20),
      SizedBox(height: 70),
      SizedBox(height: 20),
      SizedBox(height: 100),
    ]);
  }
}

class PMedicine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xfffb8900),
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 40.0,
                color: DHCTextGray,
              ),
              title: Text('Hjem',
                  style: TextStyle(
                      fontSize: 14.0,
                      color: DHCTextGray,
                      fontFamily: 'NunitoSans')),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline, size: 40.0, color: DHCTextGray),
              title: Text('profil',
                  style: TextStyle(
                      fontSize: 14.0,
                      color: DHCTextGray,
                      fontFamily: 'NunitoSans')),
            ),
          ],
        ),
        body: PMedicineScroll());
  }
}
