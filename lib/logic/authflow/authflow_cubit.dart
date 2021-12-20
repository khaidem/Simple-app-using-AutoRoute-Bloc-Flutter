import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'authflow_state.dart';

class AuthflowCubit extends Cubit<AuthflowState> {
  AuthflowCubit() : super(const AuthflowState(status: Status.isLoggedOut)) {
    final FirebaseAuth auth = FirebaseAuth.instance;

    _auth = auth;

    auth.authStateChanges().listen(
      (user) {
        if (user != null) {
          emit(const AuthflowState(status: Status.isLoggedIn));
        } else {
          emit(const AuthflowState(status: Status.isLoggedOut));
        }
      },
    );
  }
  late final FirebaseAuth _auth;

  Future<void> signOut() async {
    await _auth.signOut();
  }
}
