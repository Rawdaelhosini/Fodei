import 'package:flutter/material.dart';

import 'package:fodei/Widget/custom_Button.dart';
import 'package:fodei/components/CreateAccountbutton.dart';
import 'package:fodei/components/loginbutton.dart';

class First extends StatelessWidget {
  const First({super.key});
  static String id = 'First';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assest/Order Success.png'),
              SizedBox(
                height: 40,
              ),
              Text(
                'Welcome',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70.0, right: 50.0),
                child: Center(
                  child: Text(
                    'Before enjoying Foodmedia services Please register first',
                    style: TextStyle(color: Color(0xff4B5563), fontSize: 12),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              CustomButton(
                color: Color(0xff32B768),
                onTap: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(30)),
                    ),
                    builder: (context) => Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CreateAccountButton(),
                      ),
                    ),
                  );
                },
                textw: 'Create Account',
                color2: Color(0xffFFFFFF),
              ),
              SizedBox(
                height: 10,
              ),
              CustomButton(
                color: Color(0xffD1FAE5),
                onTap: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(30)),
                    ),
                    builder: (context) => Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: loginButton(),
                      ),
                    ),
                  );
                },
                textw: 'Login',
                color2: Color(0xff10B981),
              ),
              SizedBox(
                height: 20,
              ),
              Text('By logging in or registering, you have agreed to '),
              Text(
                'the Terms and Conditions ',
                style: TextStyle(color: Color(0xff32B768)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 150.0),
                child: Row(
                  children: [
                    Text('and '),
                    Text(
                      'Privacy Policy.',
                      style: TextStyle(color: Color(0xff32B768)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
