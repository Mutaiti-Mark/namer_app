import 'package:flutter/material.dart';
import 'package:namer_app/home.dart';
import 'package:namer_app/names.dart';

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
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Text("You have ${favourites.length} favourites"),
          ),
          for (var name in favourites)
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text(name),
            )
        ],
      )
    );
  }
}
