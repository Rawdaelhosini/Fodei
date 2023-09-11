part of 'register_cubit.dart';

@immutable
abstract class RegisterState {}

 class RegisterInitial extends RegisterState {}
 class RegisterSucess extends RegisterState {}
 class RegisterLoading extends RegisterState {}
 // ignore: must_be_immutable
 class RegisterFailure extends RegisterState {
  String errMesssage;
  RegisterFailure({required this.errMesssage});
 }


