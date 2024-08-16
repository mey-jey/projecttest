import 'package:bloc/bloc.dart';
import 'package:doctor_app/features/login/bloc/login_event.dart';
import 'package:doctor_app/features/login/bloc/login_state.dart';

class AuthBloc extends Bloc<LoginEvent, LoginState> {
  AuthBloc() : super(LoginInitialState()) {
    on<LoginEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
