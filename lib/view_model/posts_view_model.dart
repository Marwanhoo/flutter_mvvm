import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mvvm/model/post_model.dart';
import 'package:flutter_mvvm/network/posts_api.dart';
import 'package:flutter_mvvm/repository/posts_repository.dart';
import 'package:flutter_mvvm/view_model/post_view_model.dart';

class PostsViewModel {
  String text = "Posts view";

  PostsRepository? postsRepository;

  PostsViewModel({this.postsRepository});

  Future<List<PostViewModel>> fetchAllPosts() async {
    List<PostModel> list = await postsRepository!.getAllPosts();

    //convert all post model to post view model
    return list.map((post) => PostViewModel(postModel: post)).toList();
  }

// PostsApi postsApi = PostsApi();
// Future<void> fetchAllPosts()async{
//   postsApi.getAllPosts();
// }
}
