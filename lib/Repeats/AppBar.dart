import 'package:abhedyam/Screens/About_MEITY.dart';
import 'package:abhedyam/Screens/Notifications.dart';
import 'package:abhedyam/Screens/Search.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:abhedyam/Screens/HomePage.dart';

PreferredSize appbar(BuildContext context) => PreferredSize(
  preferredSize: Size.fromHeight(100.0),
  child: AppBar(
      automaticallyImplyLeading: false,
      centerTitle: true,
      flexibleSpace: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight ,
                colors: const [Colors.orange,Colors.deepOrange,Colors.pink]
            )
        ),
      ),
      bottom: PreferredSize(
          preferredSize: Size.fromWidth(MediaQuery.of(context).size.width) ,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(width: 10.0,),
              TextButton(
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: ((context) => HomePage()))) ;
                },
                child: Text("Home",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal),),
              ),
              // SizedBox(width: 10.0,),
              TextButton(
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: ((context) => AboutMEITY()))) ;
                },
                child: Text("About MEITY",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal),),
              ),
              // SizedBox(width: 10.0,),
              TextButton(
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: ((context) => Search()))) ;
                },
                child: Text("Search",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal),),
              ),
              // SizedBox(width: 10.0,),
              TextButton(
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: ((context) => Notifications()))) ;
                },
                child: Text("Notifications",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal),),
              ),
              SizedBox(width: 10.0,),
            ],
          )
      ),
      title: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 10.0),
            alignment: Alignment.bottomCenter,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/logo.png"),
              radius: 25.0,
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Abhedyam - One For All",
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                      fontSize: 20
                  ),
                ),
              ),
              Text(
                "Ministry of IT",
                style: GoogleFonts.playfairDisplay(
                  textStyle: TextStyle(
                      fontSize: 15
                  ),
                ),
              ),
            ],
          )
        ],
      )
  ),
);