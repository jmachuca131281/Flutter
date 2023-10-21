import 'package:flutter/material.dart';
import 'package:peliculas/providers/movies_provider.dart';
import 'package:peliculas/widgets/widgets.dart';
import 'package:provider/provider.dart';

import '../search/search_delegate.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Peliculas en cines'),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.search_outlined),
            onPressed: () => showSearch(context: context, delegate: MovieSearchDelegate() ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //! Tarjetas principales
            CardSwiper(movies: moviesProvider.onDisplayMovies),
            //? Slider de peliculas
            MovieSlider(
              movies: moviesProvider.popularMovies,
              title: 'Populares',
              onNextPage: () => moviesProvider.getOnDisplayMovies(),
            )
          ],
        ),
      ),
      
    );
  }
}
