import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import '../controllers/movie_controller.dart';


class MovieListView extends StatelessWidget {

  const MovieListView({super.key});

  @override
  Widget build(BuildContext context) {

    final movieController = Provider.of<MovieController>(context);

    return ListView.builder(

        itemCount: movieController.movieList.length,
        itemBuilder: (context, index) {
          final movie = movieController.movieList[index];

          return ListTile(
            title: Text("${movie.title}, ${movie.minuts}"),
          );
        });
  }
}