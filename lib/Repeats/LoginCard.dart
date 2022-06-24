import 'package:flutter/material.dart';

Card LoginCard(String title , String name , String password) => (
    Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0)
      ),
      color: Colors.orangeAccent[100],
      margin: EdgeInsets.all(30),
      child: ListView(
        padding: EdgeInsets.all(15.0),
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
            child: Text(name),
          ),
          TextField(
            style: TextStyle(height: 0.5),
            decoration: InputDecoration(
                border: InputBorder.none,
                fillColor: Color(0xFFededed),
                filled: true
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: Colors.orangeAccent[100]
            ),
            child: Text(password),
          ),
          TextField(
            style: TextStyle(height: 0.5),
            decoration: InputDecoration(
              border: InputBorder.none,
                fillColor: Color(0xFFededed),
                filled: true
            ),
          ),
          SizedBox(height: 15.0,),
          TextButton(
            style: TextButton.styleFrom(
              primary: Colors.black87,
              backgroundColor: Colors.brown[300],
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(2.0)),
              ),
            ),
            onPressed: () {  },
            child: Text("Submit",style: TextStyle(color: Colors.black,),)
          )
        ],
      ),
    )
) ;