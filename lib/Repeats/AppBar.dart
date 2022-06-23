import 'package:flutter/material.dart';

PreferredSize appbar(BuildContext context) => PreferredSize(
  preferredSize: Size.fromHeight(60.0),
  child: AppBar(
            leadingWidth: 50,
            backgroundColor: Colors.orangeAccent,
            automaticallyImplyLeading: false,
            leading: Image.asset('assets/images/logo.png'),
            elevation: 0,
            title: Column(
              children: const <Widget>[
                Text("Unique Student Identification Portal",style: TextStyle(fontSize: 15),),
                Text("(USIP)",style: TextStyle(fontSize: 15),)
              ],
            ),
      )
);