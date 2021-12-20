part of 'authflow_cubit.dart';

enum Status { isLoggedIn, isLoggedOut }

class AuthflowState extends Equatable {
  const AuthflowState({required this.status});

  final Status status;

  @override
  List<Object> get props => [status];
}
