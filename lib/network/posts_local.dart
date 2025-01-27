import 'package:flutter_mvvm/model/post_model.dart';
import 'package:flutter_mvvm/repository/posts_repository.dart';

class PostsLocal extends PostsRepository{
  @override
  Future<List<PostModel>> getAllPosts() {
    // TODO: implement getAllPosts
    throw UnimplementedError();
  }

  @override
  Future<PostModel> getPostById(int id) {
    // TODO: implement getPostById
    throw UnimplementedError();
  }

}