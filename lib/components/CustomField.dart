import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField({this.hintText, this.onChanged});
  String? hintText;
  Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 50),
      child: Center(
        child: TextField(
          onChanged: onChanged,
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xffE6E7E9),
            prefixIcon: Icon(Icons.search),
            hintText: hintText,
            hintStyle: TextStyle(
              color: Color(0xff9CA3AF),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 2.0),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xffBEC5D1),
                ),
                borderRadius: BorderRadius.circular(13)),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffBEC5D1)),
                borderRadius: BorderRadius.circular(13)),
          ),
        ),
      ),
    );
  }
}
