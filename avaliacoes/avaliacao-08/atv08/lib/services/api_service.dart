import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/post.dart';

class ApiService {
  static Future<List<Post>> buscarPosts() async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/posts');

    final resposta = await http.get(url);
    if (resposta.statusCode == 200) {
      final List<dynamic> dados = json.decode(resposta.body);
      return dados.map((json) => Post.fromJson(json)).toList();
    } else {
      throw Exception('Erro ao buscar posts');
    }
  }
}
