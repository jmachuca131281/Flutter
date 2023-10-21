import 'package:flutter/material.dart';
import 'package:mvc_provicer/views/add_movie_button.dart';
import 'package:mvc_provicer/views/movie_list_view.dart';
import 'package:provider/provider.dart';

import 'controllers/movie_controller.dart';


void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => MovieController(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Favorite Movies'),
        ),
        body: const MovieListView(),
        floatingActionButton: const AddMovieButton(),
      ),
    );
  }
}


