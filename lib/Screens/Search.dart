import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:abhedyam/Services/storage.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:abhedyam/Repeats/AppBar.dart';

class Search extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appbar(context),
        body: Container(
          child: Text("Search"),
        )
    );
  }
}