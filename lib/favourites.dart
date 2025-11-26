import 'package:flutter/material.dart';
import 'package:namer_app/home.dart';

class Favourites extends StatefulWidget {
  const Favourites({super.key});

  @override
  State<Favourites> createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('Awesome Names'),
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 20,
          color: Colors.red[800],
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: Colors.red[50],
      ),
      body: Column(

      ),
    );
  }
}
