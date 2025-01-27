import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mvvm/model/post_model.dart';
import 'package:flutter_mvvm/repository/posts_repository.dart';

class PostsApi extends PostsRepository{
  @override
  Future<List<PostModel>> getAllPosts() async{
    List<PostModel> posts = [];
    try{
      Response response = await Dio().get("https://jsonplaceholder.typicode.com/posts");
      //debugPrint("${response.data[0]['id']}");
      var list = response.data as List;
      posts = list.map((post) => PostModel.fromJson(post)).toList();

    }catch (exception){
      debugPrint("$exception");
    }
    //debugPrint("$posts");
    return posts;
  }

  @override
  Future<PostModel> getPostById(int id) {
    // TODO: implement getPostById
    throw UnimplementedError();
  }


}