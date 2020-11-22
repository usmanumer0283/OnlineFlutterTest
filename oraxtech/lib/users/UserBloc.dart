import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart';


import 'UserModel.dart';
import 'UserRepo.dart';

class UserEvent extends Equatable{
  @override
  // TODO: implement props
  List<Object> get props => [];

}

class FetchUser extends UserEvent{
  final _Id;

  FetchUser(this._Id);

  @override
  // TODO: implement props
  List<Object> get props => [_Id];
}

class ResetUser extends UserEvent{

}

class UserState extends Equatable{
  @override
  // TODO: implement props
  List<Object> get props => [];

}


class UserIsNotSearched extends UserState{

}

class UserIsLoading extends UserState{

}

class UserIsLoaded extends UserState{
  final _user;

  UserIsLoaded(this._user);

  UserModel get getUser => _user;

  @override
  // TODO: implement props
  List<Object> get props => [_user];
}

class UserIsNotLoaded extends UserState{

}

class UserBloc extends Bloc<UserEvent, UserState>{

  UserRepo userRepo;

  UserBloc(this.userRepo);

  @override
  // TODO: implement initialState
  UserState get initialState => UserIsNotSearched();

  @override
  Stream<UserState> mapEventToState(UserEvent event) async*{
    // TODO: implement mapEventToState
    if(event is FetchUser){
      yield UserIsLoading();

      try{
        UserModel user = await userRepo.getUser(event._Id);
        yield UserIsLoaded(user);
      }catch(_){
        print("Api Error");
        yield UserIsNotLoaded();
      }
    }else if(event is ResetUser){
      yield UserIsNotSearched();
    }
  }

}
