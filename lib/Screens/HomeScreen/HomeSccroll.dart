import 'package:flutter/material.dart';

import '../../Widget/cartBookingRestaurant.dart';
import '../../Widget/custom_cart.dart';
import '../../components/CustomField.dart';

class HomeIcon extends StatelessWidget {
  const HomeIcon({super.key});
  static String id = 'HomeIcon';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Fodei ",
          style:
              TextStyle(color: Color(0xff4B5563), fontStyle: FontStyle.italic),
        ),
        bottom: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: CustomTextField(hintText: 'Search'),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    child: Row(
                      children: [
                        Image.asset('assest/Group 3115.png'),
                        SizedBox(
                          width: 20,
                        ),
                        Image.asset('assest/Group 3118.png'),
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 8, right: 200.0, top: 30.0),
                    child: Text('Today New Arivable',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, bottom: 50),
                        child: Text('Best of the today  food list update',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff6B7280))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 70, bottom: 50),
                        child: Row(
                          children: [
                            TextButton(
                                onPressed: () {
                                  // Navigator.pushNamed(context, 'ScrollPage');
                                },
                                child: Text('See All',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff6B7280)))),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Color(0xff6B7280),
                              size: 12,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CustomCart(
                          image: 'assest/Mask Group.png',
                          text: 'Chicken Biryani',
                          onpressed: () {},
                          textw: 'Ambrosia Hotel & Restaurant',
                        ),
                        CustomCart(
                          image: 'assest/Mask Group1.png',
                          text: 'Sauce Tonkatsu ',
                          textw: 'Handi Restaurant,Chittagong ',
                          onpressed: () {},
                        ),
                        CustomCart(
                          image: 'assest/Mask Group2.png',
                          text: 'Chicken',
                          textw: 'Ambrosia Hotel & Restaurant',
                          onpressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 8, right: 200.0, top: 30.0),
                    child: Text('Booking Restaurant',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, bottom: 50),
                        child: Text('Check your city Near by Restaurant',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff6B7280))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 70, bottom: 50),
                        child: Row(
                          children: [
                            TextButton(
                                onPressed: () {
                                  // Navigator.pushNamed(context, 'ScrollPage');
                                },
                                child: Text('See All',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff6B7280)))),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Color(0xff6B7280),
                              size: 12,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  CartBookingRestaurant(
                    image: 'assest/Rectangle 3.png',
                    text: 'McDonald',
                    text1: 'Tarh Al Bahr, Port Said, Port Said',
                    onpressed: () {},
                    color: Color(0XFF32B768),
                    color2: Colors.white,
                    textw: 'Check',
                    onTap: () {
                      Navigator.pushNamed(context, 'HotelZamanRestaurant');
                    },
                  ),
                  CartBookingRestaurant(
                    image: 'assest/Rectangle 38.png',
                    text: 'Tava Restaurant',
                    text1: 'Zakir Hossain Rd, Chittagong',
                    onpressed: () {},
                    color: Color(0XFF32B768),
                    color2: Colors.white,
                    textw: 'Check',
                    onTap: () {
                      Navigator.pushNamed(context, 'Details');
                    },
                  ),
                  CartBookingRestaurant(
                    image: 'assest/Rectangle 3.png',
                    text: 'Oldies Comfort Food',
                    text1: 'Tarh Al Bahr, Port Said, Port Said',
                    onpressed: () {},
                    color: Color(0XFF32B768),
                    color2: Colors.white,
                    textw: 'Check',
                    onTap: () {
                      Navigator.pushNamed(context, 'Haatkhola');
                    },
                  ),
                  CartBookingRestaurant(
                    image: 'assest/Rectangle 7.png',
                    text: 'Ambrosia Hotel ',
                    text1: 'kazi Deiry, Taiger Pass Chittagong',
                    onpressed: () {},
                    color: Color(0XFF32B768),
                    color2: Colors.white,
                    textw: 'Check',
                    onTap: () {
                      Navigator.pushNamed(context, 'CustomAmbrosiaHotel');
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
