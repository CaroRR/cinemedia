

import 'package:cinemapedia/config/domain/entities/movie.dart';
import 'package:cinemapedia/config/presentation/providers/movies/movies_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final moviesSlideShowProvider = Provider<List<Movie>>((ref) {
 
 final nowPlayingMovies = ref.watch(nowPlayingMoviesProvider);

  if (nowPlayingMovies.isEmpty) return[];

  return nowPlayingMovies.sublist(0,6);




}


);