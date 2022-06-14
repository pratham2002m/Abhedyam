import 'package:abhedyam/Screens/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _LoginPage() ;
}

class _LoginPage extends State<LoginPage>{

  final _formKey = GlobalKey<FormState>() ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            resizeToAvoidBottomInset: true,
            body: Container(
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height,
                minWidth: double.infinity
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: const [Colors.purple,Colors.pink]
                ),
              ),
              child: ListView(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 30.0,
                        ),
                        Container(
                          child: Container(
                              width: double.infinity,
                              height: 200,
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Welcome To",
                                    style: GoogleFonts.smooch(
                                        textStyle: TextStyle(
                                            fontSize: 50.0
                                        )
                                    ),
                                  ),
                                  Text(
                                    "Abhedyam",
                                    style: GoogleFonts.smooch(
                                        textStyle: TextStyle(
                                            fontSize: 50.0
                                        )
                                    ),
                                  ),
                                ],
                              )
                          ),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                opacity: 0.1,
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  "assets/images/abhedyam dp.png",
                                ),
                              )
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Card(
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                padding: const EdgeInsets.fromLTRB(30,20,30,10),
                                child: TextField(
                                  decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: "Enter Your Aadhar Number"
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.fromLTRB(30,5,30,10),
                                child: TextField(
                                  decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: "Enter Your Mobile Number"
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(40, 5, 40, 20),
                                width: double.maxFinite,
                                child:  ElevatedButton(
                                    onPressed: (){
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => HomePage()
                                          )
                                      );
                                    },
                                    child: Text("Login",
                                      style: TextStyle(
                                          fontSize: 20.0
                                      ),)
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    alignment: Alignment.bottomCenter,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/abhedyam dp.png"),
                      radius: 80.0,
                    ),
                  ),
                ],
              ),
            )
    );
  }
}