import 'package:flutter/material.dart';
import 'package:fodei/Screens/Registration/firrst.dart';

import '../../components/Onboarding.dart';

class ThirdOnboarding extends StatelessWidget {
  const ThirdOnboarding({super.key});
   static String id = 'ThirdOnboarding';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Onboarding(
        image: ('assest/Safe Food.png'),
        text1: 'Good food at a cheap price',
        text2: 'You can eat at expensive restaurants with affordable price',
        color: Color(0xffE6E6E6),
        color2: Color(0xffE6E6E6),
        color3: Color(0xff32B768),
        onpressed: () {
          Navigator.push(context,MaterialPageRoute(builder: (context){
            return First();
          }));
        },


      ),
    );
  }
}