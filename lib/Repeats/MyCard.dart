import 'package:flutter/material.dart';

Card MyCard(String title , String message) => (
    Card(
      color: Colors.orangeAccent[100],
      margin: EdgeInsets.all(30),
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFffc142),
            ),
            padding: EdgeInsets.all(15.0),
            child: Text(title,style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.orangeAccent[100]
            ),
            child: Text(message),
          )
        ],
      ),
    )
) ;