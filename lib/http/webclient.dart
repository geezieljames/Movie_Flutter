import 'package:http/http.dart';

void findAll() async {
 final Response response = await get(Uri.parse('url'));
}