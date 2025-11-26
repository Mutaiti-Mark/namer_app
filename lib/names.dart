import 'package:english_words/english_words.dart';

// creating variable to display the name
var current = "";

void getNext(){
  current = WordPair.random().toString();
}

//creating list to store the fav names
var favourites = [];

void toggleFavourites(){
  if(favourites.contains(current)){
    favourites.remove(current);
  }
  else {
    favourites.add(current);
  }
}
