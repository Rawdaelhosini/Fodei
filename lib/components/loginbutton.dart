import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:google_sign_in/google_sign_in.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../Screens/HomeScreen/home.dart';
import '../Screens/cubit/login_cubit/login_cubit.dart';
import '../Screens/cubit/register_cubit/register_cubit.dart';
import '../Widget/custom_Button.dart';
import 'customButton.dart';
import 'customtextfield.dart';

class loginButton extends StatefulWidget {
  const loginButton({super.key});
  static String id = 'loginButton';
  @override
  State<loginButton> createState() => _loginButtonState();
}

class _loginButtonState extends State<loginButton> {
  String? email;

  String? Password;

  String? fullName;

  TextEditingController forgetPasswordController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController fullNameController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey();

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Divider(
              color: Color(0xffD2D4D8),
              height: 20,
              thickness: 5,
              indent: 150,
              endIndent: 150,
              // color: Colors.black,
            ),
            // title: Text('rawda',style: TextStyle(color: Colors.black),),

            elevation: 0,
            automaticallyImplyLeading: false,

            backgroundColor: Colors.white,

            bottom: TabBar(
              labelColor: Color(0xff32B768),
              indicatorColor: Color(0xff32B768),
              unselectedLabelColor: Color(0xff89909E),
              tabs: [
                Tab(
                  text: 'Login',
                ),
                Tab(
                  text: 'Create Account',
                ),
              ],
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: formKey,
              child: TabBarView(
                children: [
                  BlocConsumer<LoginCubit, LoginState>(
                    listener: (context, state) {
                      if (state is LoginLoading) {
                        isLoading = true;
                      } else if (state is LoginSucess) {
                        // BlocProvider.of<ChatCubit>(context).getMessages;
                        Navigator.pushNamed(context, Home.id);
                        isLoading = false;
                      } else if (state is LoginFailure) {
                        showSnackBar(context, state.errMesssage);
                        isLoading = false;
                      }
                    },
                    builder: (context, state) {
                      return SingleChildScrollView(
                        child: Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    Text(
                                      'Email address',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              CustomFormTextField(
                                controller: emailController,
                                onChanged: (data) {
                                  email = data;
                                },
                                hintText: 'Eg namaemail@emailkamu.com',
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    Text(
                                      'Password',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              CustomFormTextField(
                                controller: passwordController,
                                onChanged: (data) {
                                  Password = data;
                                },
                                hintText: '**** **** ****',
                                obscureText: true,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 200, top: 10),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, 'EnterEmail');
                                  },
                                  child: Text(
                                    '  Forget Password?',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff32B768),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 30.0, bottom: 5.0),
                                child: CustomButton(
                                  onTap: () async {
                                    if (formKey.currentState!.validate()) {
                                      BlocProvider.of<LoginCubit>(context)
                                          .loginUser(
                                              email: email!,
                                              password: Password!);
                                    } else {}
                                  },
                                  textw: 'Registration',
                                  color: Color(0xff32B768),
                                  color2: Colors.white,
                                ),
                              ),
                              Divider(
                                color: Color(0xffD2D4D8),
                                height: 20,
                                thickness: 0,
                                indent: 70,
                                endIndent: 60,
                                // color: Colors.black,
                              ),
                              CustomButton1(
                                onTap: () {
                                  // signWithGoogle(context);
                                  signWithGoogle(context);
                                },
                                textw: 'Login in with Google',
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  BlocConsumer<RegisterCubit, RegisterState>(
                    listener: (context, state) {
                      if (state is RegisterLoading) {
                        isLoading = true;
                      } else if (state is RegisterSucess) {
                        Navigator.pushNamed(context, Home.id);
                        isLoading = false;
                      } else if (state is RegisterFailure) {
                        showSnackBar(context, state.errMesssage);
                        isLoading = false;
                      }
                    },
                    builder: (context, state) {
                      return SingleChildScrollView(
                        child: Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    Text(
                                      'Full Name',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              CustomFormTextField(
                                controller: fullNameController,
                                hintText: 'Enter your full name',
                                onChanged: (data) {
                                  fullName = data;
                                },
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    Text(
                                      'Email address',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              CustomFormTextField(
                                controller: emailController,
                                onChanged: (data) {
                                  email = data;
                                },
                                hintText: 'Eg namaemail@emailkamu.com',
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    Text(
                                      'Password',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              CustomFormTextField(
                                controller: emailController,
                                onChanged: (data) {
                                  Password = data;
                                },
                                hintText: '**** **** ****',
                                obscureText: true,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 30.0, bottom: 5.0),
                                child: CustomButton(
                                  onTap: () async {
                                    if (formKey.currentState!.validate()) {
                                      BlocProvider.of<RegisterCubit>(context)
                                          .regester(
                                              email: email!,
                                              password: Password!,
                                              fullName: fullName!);
                                    } else {}
                                  },
                                  textw: 'Registration',
                                  color: Color(0xff32B768),
                                  color2: Colors.white,
                                ),
                              ),
                              Divider(
                                color: Color(0xffD2D4D8),
                                height: 20,
                                thickness: 0,
                                indent: 70,
                                endIndent: 60,
                                // color: Colors.black,
                              ),
                              CustomButton1(
                                onTap: () {
                                  // signWithGoogle(context);
                                  signWithGoogle(context);
                                },
                                textw: 'Sign in with Google',
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  Future<void> loginUser() async {
    var auth = FirebaseAuth.instance;
    // ignore: unused_local_variable
    UserCredential user = await auth.signInWithEmailAndPassword(
        email: email!, password: Password!);
  }

  Future<void> registerUser() async {
    // ignore: unused_local_variable
    UserCredential user = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email!, password: Password!);
  }

  Future<void> signWithGoogle(context) async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      Navigator.pushNamed(context, 'Home');

      // Once signed in, return the UserCredential

      await FirebaseAuth.instance.signInWithCredential(credential);
    } catch (e) {
      throw Exception('Something Went Wrong');
    }
  }
}
