import 'package:flutter_dotenv/flutter_dotenv.dart';

String baseUrl =
    dotenv.env['API_URL'] ?? 'https://jsonplaceholder.typicode.com/';
const String apiUrl = 'https://jsonplaceholder.typicode.com/';

class UrlConstants {
  static const todos = 'todos';
  static const posts = 'posts';
  static const users = 'users';
  static const comments = 'comments';
}
