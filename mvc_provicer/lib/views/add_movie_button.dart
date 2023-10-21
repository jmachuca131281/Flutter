import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controllers/movie_controller.dart';

class AddMovieButton extends StatelessWidget {

  const AddMovieButton({super.key});

  @override
  Widget build(BuildContext context) {

    final movieController = Provider.of<MovieController>(context);

    return FloatingActionButton(
      onPressed: () {
        movieController.addMovie('New movie', 25);
      },
      child: const Icon(Icons.add),
    );
  }
}