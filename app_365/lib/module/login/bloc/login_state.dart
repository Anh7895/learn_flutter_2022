import 'package:equatable/equatable.dart';

abstract class LoginState extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {
  final String message;

  LoginSuccess(this.message);

  @override
  // TODO: implement props
  List<Object?> get props => [message];
}

class LoginFailure extends LoginState {
  final String error;

  LoginFailure(this.error);

  @override
  // TODO: implement props
  List<Object?> get props => [error];
}
