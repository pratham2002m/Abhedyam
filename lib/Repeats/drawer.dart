import 'package:flutter/material.dart';

import '../Screens/HomePage.dart';
import '../Screens/LoginPage.dart';

Container drawer(BuildContext context) => (Container(
      width: MediaQuery.of(context).size.width / 1.5,
      child: Drawer(
        backgroundColor: Color(0xfffff9e0),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            ListTile(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext _context) => LoginPage(
                            "College Sign In", "AICTE ID", "Password")));
              },
              leading: Icon(Icons.login),
              title: Text("College Sign In"),
            ),
            ListTile(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext _context) => LoginPage(
                            "Student Sign In", "USIP ID", "Password")));
              },
              leading: Icon(Icons.login),
              title: Text("Student Sign In"),
            ),
            ListTile(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext _context) =>
                            LoginPage("Company Sign In", "ID", "Password")));
              },
              leading: Icon(Icons.login),
              title: Text("Company Sign In"),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Sign Out"),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext _context) => HomePage()));
              },
            ),
          ],
        ),
      ),
    ));
