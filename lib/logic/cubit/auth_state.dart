part of 'auth_cubit.dart';

enum AuthStatus {
  initial,
  loading,
  loaded,
  error,
}

class AuthState extends Equatable {
  final AuthStatus status;

  const AuthState({required this.status});

  @override
  List<Object> get props => [status];
}
