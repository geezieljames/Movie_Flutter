

class Books {
  final String id;
  final String title;
  final String year;
  // final List<String> author;
  final String wikiUrl;
  Books({
    required this.id,
    required this.title,
    required this.year,
    // required this.author,
    required this.wikiUrl

  });
  factory Books.fromMap(Map<String, dynamic> map) {
    return Books(
      id: map['id'] as String,
      title: map['title'] as String,
      year: map['year'] as String,
      // author: List<String>.from(map['author'] as List<String>),
      wikiUrl: map['wiki_url'] as String,
    );
  }
}