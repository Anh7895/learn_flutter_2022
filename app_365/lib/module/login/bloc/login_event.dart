import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
class LoginCandidateButtonPressed extends LoginEvent {
  final String email;
  final String password;

  const LoginCandidateButtonPressed(this.email, this.password);
  @override
  // TODO: implement props
  List<Object?> get props => [email, password];
}
