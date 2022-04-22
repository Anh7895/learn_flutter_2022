import 'package:equatable/equatable.dart';

import '../../intro/model/result_search.dart';

abstract class RegisterState extends Equatable {
  @override
  List<Object?> get props => [];
}

class RegisterInitial extends RegisterState {}

class RegisterLoading extends RegisterState {}

class RegisterSuccess extends RegisterState {
  final String message;

  RegisterSuccess(this.message);

  @override
  // TODO: implement props
  List<Object?> get props => [message];
}
class ListProvinceLoaded extends RegisterState {
  final List<Tinhthanh> list;

  ListProvinceLoaded(this.list);
  @override
  // TODO: implement props
  List<Object?> get props => [list];
}

class RegisterFailure extends RegisterState {
  final String error;

  RegisterFailure(this.error);

  @override
  // TODO: implement props
  List<Object?> get props => [error];
}
