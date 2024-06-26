import 'package:cinemapedia/config/domain/entities/movie.dart';
import 'package:cinemapedia/infrastructure/models/movie_moviedb.dart';

class MovieMapper {
  // ignore: prefer_typing_uninitialized_variables
  static Movie movieDBToEntity(MovieMovieDB movieDB) => Movie(
      adult: movieDB.adult,
      backdropPath: (movieDB.backdropPath !="")
      ?'https://image.tmdb.org/t/p/w500/${movieDB.backdropPath}'
      :"https://ih1.redbubble.net/image.4905811447.8675/flat,750x,075,f-pad,750x1000,f8f8f8.jpg",
      genreIds:movieDB.genreIds.map((e) => e.toString()).toList(),
      id: movieDB.id,
      originalLanguage:movieDB.originalLanguage,
      originalTitle: movieDB.originalTitle,
      overview: movieDB.overview,
      popularity: movieDB.popularity,
      posterPath: (movieDB.posterPath != '')
      ?'https://image.tmdb.org/t/p/w500/${movieDB.posterPath}'
      :"no-poster" ,
      releaseDate: movieDB.releaseDate,
      title: movieDB.title,
      video: movieDB.video,
      voteAverage: movieDB.voteAverage,
      voteCount: movieDB.voteCount);
}
