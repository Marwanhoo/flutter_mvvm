import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = 'https://jsonplaceholder.typicode.com';

  Future<List<dynamic>> fetchPosts() async {
    final response = await http.get(Uri.parse('$baseUrl/posts'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to fetch posts');
    }
  }
}


/*
import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio();

  ApiService() {
    _dio.options.baseUrl = 'https://jsonplaceholder.typicode.com';
    _dio.options.connectTimeout = const Duration(seconds: 10); // Timeout for requests
    _dio.options.receiveTimeout = const Duration(seconds: 10); // Timeout for responses
  }

  Future<List<dynamic>> fetchPosts() async {
    try {
      final response = await _dio.get('/posts');
      return response.data;
    } catch (e) {
      throw Exception('Failed to fetch posts: $e');
    }
  }
}

 */