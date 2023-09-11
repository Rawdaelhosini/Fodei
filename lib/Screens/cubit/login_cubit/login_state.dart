part of 'login_cubit.dart';

@immutable
abstract class LoginState {}

 class LoginInitial extends LoginState {}
 class LoginSucess extends LoginState {}
 class LoginLoading extends LoginState {}
 // ignore: must_be_immutable
 class LoginFailure extends LoginState {
  String errMesssage;
  LoginFailure({required this.errMesssage});
 }


