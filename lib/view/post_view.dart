import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/post_cubit.dart';
import '../cubit/post_state.dart';

class PostView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final postCubit = context.read<PostCubit>();

    return Scaffold(
      appBar: AppBar(title: Text('Posts')),
      body: BlocBuilder<PostCubit, PostState>(
        builder: (context, state) {
          if (state is PostInitial) {
            return Center(
              child: ElevatedButton(
                onPressed: postCubit.fetchPosts,
                child: Text('Fetch Posts'),
              ),
            );
          } else if (state is PostLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is PostLoaded) {
            return ListView.builder(
              itemCount: state.posts.length,
              itemBuilder: (context, index) {
                final post = state.posts[index];
                return ListTile(
                  title: Text(post.title),
                  subtitle: Text(post.body),
                );
              },
            );
          } else if (state is PostError) {
            return Center(child: Text(state.message));
          } else {
            return Center(child: Text('Unknown state'));
          }
        },
      ),
    );
  }
}
