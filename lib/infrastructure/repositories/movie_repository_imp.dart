


import 'package:cinemapedia/config/domain/datasources/movies_datasource.dart';
import 'package:cinemapedia/config/domain/entities/movie.dart';
import 'package:cinemapedia/config/domain/repositores/movies_repository.dart';

class MovieRepositoryImpl extends MoviesRepository{

  

  final MoviesDatasource datasource;
  MovieRepositoryImpl(this.datasource);




  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) {
  
   return datasource.getNowPlaying(page: page);
  }

}