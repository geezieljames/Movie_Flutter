import 'package:movie/dio/Dio_service.dart';
import 'package:dio/dio.dart';

class DioServiceImp implements DioService {

  @override
  Dio getDio() {
    return Dio(
      BaseOptions(
        baseUrl: 'https://api.themoviedb.org/4/',
        headers: {
          'content-type': 'application/json;charset=utf-8',
          'authorization':
          'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI3YTE3N2YzNWRiYzdlN2VjYTJjMzE5ODlhNjNmMjMyYSIsInN1YiI6IjYyNzA4NGE4OTAzYzUyMTg4MjE4YTA2OCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.Cu5RzrpHba8P87rhzKH2EvjnvgoPQOCeOF8qvf-39fA'
        }
      )
    );

  }
}