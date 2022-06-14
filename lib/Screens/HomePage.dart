import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:abhedyam/Services/storage.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:abhedyam/Repeats/AppBar.dart';

class HomePage extends StatelessWidget{

  FirebaseStorage storage = FirebaseStorage.instance ;

  List sliderImages = [
    "assets/sliders/image1.jpg",
    "assets/sliders/image2.jpg",
    "assets/sliders/image3.png",
  ];



  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: appbar(context),
        body: ListView(
            children: <Widget>[
              SizedBox(height: 10.0,),
              FutureBuilder(
                  future: Storage().listSliders(),
                  builder: (BuildContext context, AsyncSnapshot<dynamic>snapshot){
                    if(snapshot.connectionState == ConnectionState.done){
                      return Container(
                        height: 200,
                        child: ListView.builder(
                          itemCount: snapshot.data!.items.length,
                            itemBuilder: (BuildContext context,int index){
                                return FutureBuilder(
                                  future: Storage().listSliders1(snapshot.data!.items[index].name),
                                  builder: (BuildContext context, AsyncSnapshot<String>snapshot){
                                    if(snapshot.connectionState == ConnectionState.done && snapshot.hasData){
                                      return Container(
                                          height: 200,
                                          margin: EdgeInsets.symmetric(horizontal: 50),
                                          child: Image.network(snapshot.data!,width: MediaQuery.of(context).size.width/2,height: MediaQuery.of(context).size.height ,)
                                      );
                                    }
                                    else if(snapshot.connectionState == ConnectionState.done && !snapshot.hasData ){
                                      return Container(
                                          width: MediaQuery.of(context).size.width,
                                          child: Center(
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: const <Widget>[
                                                SizedBox(
                                                  child: CircularProgressIndicator(),
                                                  height: 50.0,
                                                  width: 50.0,
                                                ),
                                              ],
                                            ),
                                          )
                                      );
                                    }
                                    return Container();
                                  },
                                );
                            },
                          scrollDirection: Axis.horizontal,
                        )
                      );
                    }
                    else{
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        height: 200,
                        child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                SizedBox(
                                  child: CircularProgressIndicator(),
                                  height: 200.0,
                                  width: MediaQuery.of(context).size.width-40,
                                ),
                              ],
                        ),
                      );
                    }
                  },
              ),
              SizedBox(height: 10.0,),
              // CarouselSlider(
              //   options: CarouselOptions(height: 150.0),
              //   items: [0,1,2].map((i) {
              //     return Builder(
              //       builder: (BuildContext context) {
              //         return Container(
              //             width: MediaQuery.of(context).size.width,
              //             margin: EdgeInsets.symmetric(horizontal: 5.0),
              //             decoration: BoxDecoration(
              //               image: DecorationImage(
              //                 fit: BoxFit.fill,
              //                 image: AssetImage(sliderImages[i])
              //               )
              //             ),
              //         );
              //       },
              //     );
              //   }).toList(),
              // ),
            ],
        ),
      );
  }
}