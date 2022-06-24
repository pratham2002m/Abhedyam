import 'package:abhedyam/Repeats/LoginCard.dart';
import 'package:abhedyam/Repeats/drawer.dart';
import 'package:abhedyam/Screens/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:abhedyam/Repeats/MyCard.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:abhedyam/Repeats/AppBar.dart';

import 'HomePage.dart';

class LoginPage extends StatefulWidget{

  String title , name , password ;
  LoginPage(this.title,this.name,this.password);
  @override
  State<StatefulWidget> createState() => _LoginPage(title , name , password) ;
}
class _LoginPage extends State<LoginPage>{

  String title , name , password ;
  _LoginPage(this.title,this.name,this.password);

  int selectedIndex = 0 ;

  void _onTap(int index){
    setState(() {
      selectedIndex = index ;
      if(index == 0) {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => HomePage()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appbar(context),
        body: Scaffold(
          backgroundColor: Color(0xfffff9e0),
          appBar: AppBar(
            leadingWidth: 50,
            backgroundColor: Colors.orangeAccent[100],
            elevation: 0,
            title: Column(
              children: const <Widget>[
                Text("Ministry Of Electronics And Information",style: TextStyle(fontSize: 15),),
                Text("Technology",style: TextStyle(fontSize: 15),)
              ],
            ),
          ),
          drawer: drawer(context),
          body: Container(
            child: LoginCard(title , name , password)
          ),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: 'Home',
              ),
              BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Search',),
              BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Search'),
              BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
              BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
            ],
            currentIndex: selectedIndex,
            onTap: _onTap,
          ),
        )
    );
  }
}