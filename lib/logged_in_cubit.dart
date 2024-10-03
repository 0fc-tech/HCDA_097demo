import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'logged_in_state.dart';

class LoggedInCubit extends Cubit<LoggedInState> {
  LoggedInCubit() : super(LoggedInInitial());
  void login(String email, String pwd){
    if(email.isNotEmpty && pwd.isNotEmpty == true)
      emit(LoggedInSuccessful());
    else
      emit(LoggedInDenied());
  }
}
