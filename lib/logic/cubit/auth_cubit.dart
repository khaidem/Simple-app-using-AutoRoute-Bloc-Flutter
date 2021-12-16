import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(const AuthState(status: AuthStatus.initial));

  Future<void> getData() async {
    if (isLoading) return;

    emit(const AuthState(status: AuthStatus.loading));
    // try {
    //   final data = await ;

    // } catch (e) {

    // }
  }

  bool get isLoading => state.status == AuthStatus.loading;
}
