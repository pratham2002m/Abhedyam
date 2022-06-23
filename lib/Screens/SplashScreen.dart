import 'package:flutter/material.dart';

class SplashScreenPage extends StatelessWidget{

  String screenname ;

  SplashScreenPage({required this.screenname});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: SizedBox(
          height: 100,
          width: 100,
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}