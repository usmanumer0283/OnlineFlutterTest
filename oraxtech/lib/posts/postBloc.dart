import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart';
import 'package:oraxtech/posts/PostModel.dart';
import 'package:oraxtech/posts/PostRepo.dart';

class PostEvent extends Equatable{
  @override
  // TODO: implement props
  List<Object> get props => [];

}

class FetchPosts extends PostEvent{
  FetchPosts();
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class ResetPosts extends PostEvent{

}

class PostsState extends Equatable{
  @override
  // TODO: implement props
  List<Object> get props => [];

}


class PostsIsNotSearched extends PostsState{

}

class PostsIsLoading extends PostsState{

}

class PostsIsLoaded extends PostsState{
  final _posts;

  PostsIsLoaded(this._posts);

  PostModel get getPosts => _posts;

  @override
  // TODO: implement props
  List<Object> get props => [_posts];
}

class PostsIsNotLoaded extends PostsState{

}

class PostsBloc extends Bloc<PostEvent, PostsState>{

  PostRepo postsRepo;

 PostsBloc(this.postsRepo);

  @override
  // TODO: implement initialState
  PostsState get initialState => PostsIsNotSearched();

  @override
  Stream<PostsState> mapEventToState(PostEvent event) async*{
    // TODO: implement mapEventToState
    if(event is FetchPosts){
      yield PostsIsLoading();

      try{
        PostModel posts = await postsRepo.GetallPosts();
        yield PostsIsLoaded(posts);
      }catch(_){
        print("Api Error");
        yield PostsIsNotLoaded();
      }
    }else if(event is ResetPosts){
      yield PostsIsNotSearched();
    }
  }

}
