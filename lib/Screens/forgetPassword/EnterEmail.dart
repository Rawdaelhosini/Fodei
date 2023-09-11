// ignore_for_file: unused_local_variable, avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../Widget/custom_Button.dart';
import '../../components/customtextfield.dart';

// ignore: must_be_immutable
class EnterEmail extends StatefulWidget {
  EnterEmail({super.key});
  static String id = 'EnterEmail';

  @override
  State<EnterEmail> createState() => _EnterEmailState();
}

class _EnterEmailState extends State<EnterEmail> {
  TextEditingController forgetPasswordController = TextEditingController();
  String? email;

  GlobalKey<FormState> formKey = GlobalKey();

  // ignore: unused_field
  final _emailController = TextEditingController();

  Future<void> sendPasswordResetEmail(String email) async {
    return FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 100.0, top: 50.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 80.0),
                      child: Text(
                        'Forget Password',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      'Enter your registered email below ',
                      style: TextStyle(fontSize: 16, color: Color(0xff9CA3AF)),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 70.0),
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
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: CustomFormTextField(
                          controller: forgetPasswordController,
                          onChanged: (data) {
                            email = data;
                          },
                          hintText: 'Eg namaemail@emailkamu.com',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Row(
                          children: [
                            Text(
                              'Remember the password? ',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff9CA3AF),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, 'First');
                              },
                              child: Text(
                                '  Sign in',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xff32B768),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 350.0,
                      ),
                      CustomButton(
                        onTap: () async {
                          if (formKey.currentState!.validate()) {
                            var forgotEmail =
                                forgetPasswordController.text.trim();
                            try {
                              await FirebaseAuth.instance
                                  .sendPasswordResetEmail(email: email!)
                                  .then((value) => {
                                        print('Email Sent !'),
                                        Navigator.pushNamed(context, 'First'),
                                      });
                            } on FirebaseAuthException catch (e) {
                              print('error $e');
                            }
                          }
                        },
                        textw: 'Submit',
                        color: Color(0xff32B768),
                        color2: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
