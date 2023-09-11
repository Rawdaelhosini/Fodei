import 'package:flutter/material.dart';
import 'package:fodei/Screens/Onboarding/third.dart';

import '../../components/Onboarding.dart';

class SecondOnboarding  extends StatelessWidget {
  const SecondOnboarding ({super.key});
  static String id = 'SecondOnboarding';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Onboarding(
        image: ('assest/Order illustration.png'),
        text1: 'Select the Favorites Menu',
        text2: 'Now eat well, don\'t leave the house,You can choose your favorite food only with one click',
        color: Color(0xffE6E6E6),
        color2: Color(0xff32B768),
        color3: Color(0xffE6E6E6),
        onpressed: () {
          Navigator.push(context,MaterialPageRoute(builder: (context){
            return ThirdOnboarding();
          }));
        },

      ),
    );
  }
}