import 'package:flutter/material.dart';

import '../models/movie_model.dart';

class MovieController extends ChangeNotifier{

  List<Movie> movieList = [];

  void addMovie(String title, int minuts){

    final newMovie = Movie(title, minuts);
    movieList.add(newMovie);
    notifyListeners(); // Notify listeners when the data changes

  }

}