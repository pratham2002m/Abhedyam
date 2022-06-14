import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class Storage {
    FirebaseStorage storage = FirebaseStorage.instance ;
    late ListResult result ;

    Future<ListResult> listSliders() async {
      result = await storage.ref('sliders').listAll();
      print("Name + ${result.items[0].name}");
      result.items.forEach((element) {
        print("Name + ${element.name}");
      });

      return result ;
    }

    Future<String> listSliders1(String ImageName) async {

      String sliders = await storage.ref('sliders/${ImageName}').getDownloadURL() ;

      return sliders ;
    }

}