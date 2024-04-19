


import 'package:cinemapedia/infrastructure/datasources/moviedb_datasource.dart';
import 'package:cinemapedia/infrastructure/repositories/movie_repository_imp.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


// este repositorio es inmutable , solo lectura
final moveRepositoryProvider = Provider((ref) {

  return MovieRepositoryImpl(MoviedbDatasource ());



});