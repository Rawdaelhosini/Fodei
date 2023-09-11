import 'package:flutter/material.dart';
import 'package:fodei/Screens/Onboarding/second.dart';

import 'package:fodei/components/Onboarding.dart';

class FirstOnboarding extends StatelessWidget {
  const FirstOnboarding({super.key});
  static String id = 'FirstOnboarding';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Onboarding(
        image: ('assest/Tracking & Maps.png'),
        text1: 'Nearby restaurants',
        text2: 'You don\'t have to go far to find a good restaurant,we have provided all the restaurants that is near you',
        color: Color(0xff32B768),
        color2: Color(0xffE6E6E6),
        color3: Color(0xffE6E6E6),
        onpressed: () {
          Navigator.push(context,MaterialPageRoute(builder: (context){
            return SecondOnboarding();
          }));
        },

      ),
    );
  }
}
