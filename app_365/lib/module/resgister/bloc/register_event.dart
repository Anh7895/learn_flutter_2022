import 'dart:io';

import 'package:equatable/equatable.dart';

class RegisterEvent extends Equatable {
  const RegisterEvent();

  @override
  List<Object?> get props => [];
}

class RegisterCandidateButtonPress extends RegisterEvent {
  final File avatar;
  final String userName;
  final String email;
  final String phone;
  final String password;
  final String rePassword;
  final String address;
  final int city;
  final int district;
  final String job;
  final String workplace;
  final String desiredProfession;
  final String day;

  RegisterCandidateButtonPress(
      this.avatar,
      this.userName,
      this.email,
      this.phone,
      this.password,
      this.rePassword,
      this.address,
      this.city,
      this.district,
      this.job,
      this.workplace,
      this.desiredProfession,
      this.day);

  @override
  List<Object?> get props => [
        avatar,
        userName,
        email,
        phone,
        password,
        rePassword,
        address,
        city,
        district,
        job,
        workplace,
        desiredProfession,
        day
      ];
}

class GetProvince extends RegisterEvent {

}
