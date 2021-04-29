import 'package:flutter/material.dart';
import 'package:worldapp/pages/choose_location.dart';
import 'package:worldapp/pages/home.dart';
import 'package:worldapp/pages/loading.dart';

void main() {
  runApp(MaterialApp(
initialRoute: '/',
    routes: {
    '/':(context)=>Loading(),
      '/home':(context)=>Home(),
      '/location':(context)=>ChooseLocation(),
    },

  ));
}
