
import 'package:cinemapedia/config/constants/environmet.dart';
import 'package:cinemapedia/config/domain/datasources/movies_datasource.dart';
import 'package:cinemapedia/config/domain/entities/movie.dart';
import 'package:cinemapedia/infrastructure/datasources/mappers/movie_mapper.dart';
import 'package:cinemapedia/infrastructure/models/movidb_response.dart';
import 'package:dio/dio.dart';

class MoviedbDatasource extends MoviesDatasource {

  final dio = Dio(BaseOptions(
    baseUrl: 'https://api.themoviedb.org/3',
    queryParameters: {
      'api_key':Environmet.theMovieDbKey,
      'language':'es-MX'
    }

  ));


  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) async {

    final response = await dio.get('/movie/now_playing');
 final movieDbResponse = MovieDbResponse.fromJson(response.data);


final List<Movie> movies = movieDbResponse.results
.where((moviedb) => moviedb.posterPath !='no-poster')
.map(
  (moviedb) => MovieMapper.movieDBToEntity(moviedb)
  ).toList();



return movies;

    
    
  }




}