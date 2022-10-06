
import 'package:dio/dio.dart';
import '../models/books.dart';


Future<List<Books>> findAllBooks() async {
 final Response response = await Dio().get('https://the-dune-api.herokuapp.com/books/5');
 if (response.statusCode == 200) {
  final list = response.data as List;
  return list.map((e) => Books.fromMap(e)).toList();

 } else {
  throw Exception('erro ao carregar dado');
 }
}

// void findAll() async {
//  final Response response = await Dio().get('http://192.168.100.6:8080/transactions');
//
//  if(response.statusCode == 200){
//   print(response.data);
//  }else{
//   throw Exception('erro ao carregar dado');
//  }

 // final Response response = await get(Uri.parse('http://192.168.100.6:8080/transactions'));
 // print(response.body);
