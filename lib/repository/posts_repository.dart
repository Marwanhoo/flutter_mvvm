import 'package:flutter_mvvm/model/post_model.dart';

abstract class PostsRepository {
  Future<List<PostModel>> getAllPosts();
  Future<PostModel> getPostById(int id);
}