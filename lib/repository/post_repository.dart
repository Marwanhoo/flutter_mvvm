
import 'package:flutter_mvvm/model/post_model.dart';
import 'package:flutter_mvvm/services/api_service.dart';

class PostRepository {
  final ApiService apiService;

  PostRepository(this.apiService);

  Future<List<Post>> getPosts() async {
    final data = await apiService.fetchPosts();
    return data.map<Post>((json) => Post.fromJson(json)).toList();
  }
}
