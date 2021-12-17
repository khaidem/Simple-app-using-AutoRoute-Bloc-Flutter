import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(const AuthState(status: AuthStatus.initial));

  final _auth = FirebaseAuth.instance;

  Future<void> login(String email, String password) async {
    if (isLoading) {
      return;
    }

    emit(const AuthState(status: AuthStatus.initial));
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      emit(const AuthState(status: AuthStatus.loaded));
    } catch (e) {
      emit(const AuthState(status: AuthStatus.error));
    }
  }

  bool get isLoading => state.status == AuthStatus.loading;
}
