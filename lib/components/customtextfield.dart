// ignore_for_file: unused_field

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomFormTextField extends StatefulWidget {
  CustomFormTextField(
      {this.hintText,
      this.obscureText = false,
      this.onChanged,
      this.controller});
  String? hintText;
  Function(String)? onChanged;
  bool? obscureText;
  TextEditingController? controller;

  @override
  State<CustomFormTextField> createState() => _CustomFormTextFieldState();
}

class _CustomFormTextFieldState extends State<CustomFormTextField> {
  TextEditingController forgetPasswordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // controller: controller!,

      textInputAction: TextInputAction.done,

      obscureText: widget.obscureText!, //عشان الباسورد يختفي
      validator: (data) {
        if (data!.isEmpty) {
          return 'Field is required';
        }
        return null;
      },
      onChanged: widget.onChanged,

      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyle(
          color: Color(0xffBEC5D1),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xffBEC5D1),
            ),
            borderRadius: BorderRadius.circular(13)),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffBEC5D1)),
            borderRadius: BorderRadius.circular(13)),
      ),
    );
  }
}
