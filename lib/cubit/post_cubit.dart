import 'package:flutter_bloc/flutter_bloc.dart';
import '../repository/post_repository.dart';

import 'post_state.dart';

class PostCubit extends Cubit<PostState> {
  final PostRepository repository;

  PostCubit(this.repository) : super(PostInitial());

  void fetchPosts() async {
    try {
      emit(PostLoading());
      final posts = await repository.getPosts();
      emit(PostLoaded(posts));
    } catch (e) {
      emit(PostError('Failed to fetch posts: $e'));
    }
  }
}
