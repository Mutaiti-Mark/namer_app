import 'package:flutter/material.dart';
import 'package:namer_app/names.dart';
import 'package:namer_app/names_card.dart';

void main() {
  runApp(MaterialApp(
    home: NamerApp(),
  ));
}

class NamerApp extends StatefulWidget {
  const NamerApp({super.key});

  @override
  State<NamerApp> createState() => _NamerAppState();
}

class _NamerAppState extends State<NamerApp> {

  int _selectedIndex = 0; // Tracks the currently selected tab
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
        'Home',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold
        )),
    Text(
        'Favourites',
        style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
        )),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          NamesCard(),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: (){
                  toggleFavourites();
                },
                label: Text(
                  "Like",
                  style: TextStyle(
                      color: Colors.red[800]
                  ),
                ),
                icon: Icon(
                  Icons.favorite,
                  color: Colors.red[800],
                ),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: (){
                  setState(() {
                    getNext();
                  });
                },
                child: Text(
                  "Next",
                  style: TextStyle(
                    color: Colors.red[800]
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red[50],
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favourites',
          ),
        ],
        currentIndex: _selectedIndex, // Highlights the selected item
        selectedItemColor: Colors.red[800], // Color of the selected item
        onTap: _onItemTapped, // Handles tap events
      ),
    );
  }
}
