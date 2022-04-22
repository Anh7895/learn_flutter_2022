import 'package:equatable/equatable.dart';

import '../model/result_home_candidate.dart';

abstract class HomeState extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class HomeInitial extends HomeState {}
class HomeLoading extends HomeState {}
class DataHomeLoaded extends HomeState {
  final List<Vieclam> listNewJob;
  final List<LoaiVieclam> listJobType;
  final List<Vieclam> listJobHighSalary;
final List<VieclamNn>listOutstandingJobs;

  DataHomeLoaded(  {required this.listOutstandingJobs,required this.listNewJob, required this.listJobType, required this.listJobHighSalary});
  @override
  // TODO: implement props
  List<Object?> get props => [listNewJob, listJobType, listJobHighSalary,listOutstandingJobs];
}
class HomeFailure extends HomeState {
  final String error;

  HomeFailure(this.error);
  @override
  // TODO: implement props
  List<Object?> get props => [error];
}
