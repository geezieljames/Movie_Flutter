import '../models/movies.dart';

abstract class MovieRepository {
  Future<Movies> getMovies();
}