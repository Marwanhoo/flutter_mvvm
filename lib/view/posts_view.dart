import 'package:flutter/material.dart';
import 'package:flutter_mvvm/network/posts_api.dart';
import 'package:flutter_mvvm/network/posts_local.dart';
import 'package:flutter_mvvm/view_model/post_view_model.dart';
import 'package:flutter_mvvm/view_model/posts_view_model.dart';

class PostsView extends StatelessWidget {
   PostsView({super.key});



  PostsViewModel postsViewModel = PostsViewModel(postsRepository: PostsApi());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(postsViewModel.text),
      ),
      body: FutureBuilder<List<PostViewModel>>(
        future: postsViewModel.fetchAllPosts(),
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(child: CircularProgressIndicator());
          }
          return ListView.builder(
            itemCount: snapshot.data?.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("${snapshot.data?[index].title}"),

              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
           //postsViewModel.fetchAllPosts();
        },
      ),
    );
  }
}
