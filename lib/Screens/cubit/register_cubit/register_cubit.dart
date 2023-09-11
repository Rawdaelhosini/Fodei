import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  Future<void> regester(
      {required String email,
      required String password,
      required String fullName}) async {
    var auth = FirebaseAuth.instance;
    emit(RegisterLoading());

    try {
      // ignore: unused_local_variable
      UserCredential user = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      final User? userr = auth.currentUser;
      final uid = userr!.uid;
      await FirebaseFirestore.instance.collection('users').doc(uid).set({
        // 'createdAt': [],
        'id': uid,
        'name': fullName,
        'email': email,
        // 'shipping-address': [],
        // 'userCart': [],
      });
      emit(RegisterSucess());
    } on FirebaseAuthException catch (ex) {
      if (ex.code == 'weak-password') {
        emit(RegisterFailure(errMesssage: 'Weak Password'));
      } else if (ex.code == 'email-already-in-use') {
        emit(RegisterFailure(errMesssage: 'Email Alraedy in Use'));
      }
    } catch (e) {
      emit(RegisterFailure(errMesssage: 'there was an error please try again'));
    }
  }
}
