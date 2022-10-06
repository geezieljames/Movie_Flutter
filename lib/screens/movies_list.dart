import 'package:flutter/material.dart';
import 'package:movie/dio/webclient.dart';
import 'package:movie/models/books.dart';

class MoviesList extends StatefulWidget {
  @override
  State<MoviesList> createState() => _MoviesListState();
}


class _MoviesListState extends State<MoviesList> {

  List<Books> booksList = [];
  Future<void> getBooks() async {
    final response = await findAllBooks();
    setState(() {
      booksList = response;
    });
  }
  @override
  void initState() {
    super.initState();
    getBooks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movies List'),
      ),
      body: ListView.builder(
        itemCount: booksList.length,
        itemBuilder: (context,index){
          final book = booksList[index];
          return Card(
              child: ListTile(
                leading: Image.network('https://www.chevrolet.com.br/content/dam/chevrolet/mercosur/brazil/portuguese/index/cars/cars-subcontent/02-images/cruze-sport6-rs-carros.jpg?imwidth=960'),
                title: Text(book.title, style: TextStyle(fontSize: 24.0)),
                subtitle: Text(book.wikiUrl),
              )
          );
        },
      ),
    );
  }
}
