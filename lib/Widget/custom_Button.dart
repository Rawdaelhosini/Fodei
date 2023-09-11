// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomButton extends StatelessWidget {
   CustomButton({ this.onTap ,this.textw,this.color,this.color2});
   VoidCallback? onTap;
   
  String? textw;
  Color? color;
  Color? color2;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      
      child: Container(
        decoration: BoxDecoration(
          color: color!,
          borderRadius: BorderRadius.circular(10),
        ),
        width: 256,
        height: 49,
        child: Center(child: Text(textw!,style: TextStyle(color: color2!),)),
      ),
    );
  }
}
