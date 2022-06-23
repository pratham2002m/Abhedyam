import 'package:flutter/material.dart';
import 'package:abhedyam/Repeats/MyCard.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:abhedyam/Repeats/AppBar.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _HomePage() ;
}
class _HomePage extends State<HomePage>{

  int selectedIndex = 0 ;

  void _onTap(int index){
      setState(() {
        selectedIndex = index ;
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
          drawer: Container(
            width: MediaQuery.of(context).size.width/1.5,
            child: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.login),
                    title: Text("Sign In"),
                  ),
                  ListTile(
                    leading: Icon(Icons.app_registration_sharp),
                    title: Text("Register"),
                  ),
                  ListTile(
                    leading: Icon(Icons.logout),
                    title: Text("Sign Out"),
                  ),
                ],
              ),
            ),
          ),
          body: Container(
            child: ListView(
              children: <Widget>[
                MyCard("AICTE Info", "INfo Regarding Aicte ggggggggggg ggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg"),
                MyCard("USIP Contribution", "INfo Regarding Aicte ggggggggggg ggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg"),
              ],
            ),
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