import 'package:flutter/material.dart';
import 'package:fodei/Screens/Registration/firrst.dart';

// ignore: must_be_immutable
class Onboarding extends StatelessWidget {
  Onboarding(
      {this.image,
      this.text1,
      this.text2,
      this.color,
      this.color2,
      this.color3,
      this.onpressed});
  String? image;
  String? text1;
  String? text2;
  Color? color;
  Color? color2;
  Color? color3;
  Function()? onpressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 120.0),
            child: Column(
              children: [
                Image.asset(
                  image!,
                  height: 297.84,
                  width: 290,
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  text1!,
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
                      text2!,
                      style: TextStyle(color: Color(0xff4B5563), fontSize: 12),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 20, top: 30),
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return First();
                            },
                          ));
                        },
                        child: Text(
                          'Skip',
                          style:
                              TextStyle(fontSize: 16, color: Color(0xff4B5563)),
                        ),
                      ),
                      SizedBox(
                        width: 110,
                      ),
                      Icon(
                        Icons.circle,
                        color: color!,
                        size: 12,
                      ),
                      Icon(
                        Icons.circle,
                        color: color2!,
                        size: 12,
                      ),
                      Icon(
                        Icons.circle,
                        color: color3!,
                        size: 12,
                      ),
                      SizedBox(
                        width: 80,
                      ),
                      IconButton(
                          onPressed: onpressed!,
                          icon: Icon(Icons.arrow_forward,
                              color: Color(0xff32B768), size: 20)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
