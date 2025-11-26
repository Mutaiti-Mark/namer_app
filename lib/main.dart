import 'package:flutter/material.dart';
import 'package:namer_app/favourites.dart';
import 'package:namer_app/home.dart';
import 'package:namer_app/names.dart';
import 'package:namer_app/names_card.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => NamerApp(),
      '/favourites': (context) => Favourites()
    }
  ));
}
