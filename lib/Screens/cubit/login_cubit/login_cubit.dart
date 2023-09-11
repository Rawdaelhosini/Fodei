
import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';


part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());


  Future<void> loginUser({required String email, required String password}) async {
    var auth = FirebaseAuth.instance;
    emit(LoginLoading());
    
    try {
  // ignore: unused_local_variable
  UserCredential user =
            await auth.signInWithEmailAndPassword(
    email: email, password: password);
    emit(LoginSucess());
} on  FirebaseAuthException catch (ex) {
                if (ex.code == 'wrong-password') {
                  emit(LoginFailure(errMesssage: 'Wrong Password'));
                } else if (ex.code == 'user-not-found') {
                  emit(LoginFailure(errMesssage: 'User Not Found'));
                }
              } catch (e) {
  emit(LoginFailure(errMesssage: 'Something Went Wrong'));
}
  }
}
