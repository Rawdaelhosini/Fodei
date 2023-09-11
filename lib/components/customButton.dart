// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';


class CustomButton2 extends StatelessWidget {
   CustomButton2({ this.onTap ,this.textw});
   VoidCallback? onTap;
   
  String? textw;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff32B768),
          borderRadius: BorderRadius.circular(8),
        ),
        width: 256,
        height: 49,
        child: Center(child: Text(textw!,style: TextStyle( fontSize: 20,
                            color: Colors.black54,
                            fontWeight: FontWeight.w600),),),
      ),
    );
  }
}
class CustomButton1 extends StatelessWidget {
   CustomButton1({ this.onTap ,this.textw});
   VoidCallback? onTap;
   
  String? textw;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xffF4F4F4),
          borderRadius: BorderRadius.circular(8),
        ),
        width: 256,
        height: 49,
        child: Center(
          child: Row(
            children: [
               Image(
                        image: AssetImage("assest/R.png"),
                        height: 25.0,
                        width: 30,
                      ),
               Padding(
                        padding: EdgeInsets.only(left: 24, right: 8),
                        child: Text(
                          textw!,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),),
            ],
          ),
        ),
        
      ),
    );
  }
}
