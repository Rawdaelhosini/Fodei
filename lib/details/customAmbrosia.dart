import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Widget/cartBookingRestaurant.dart';

class CustomAmbrosiaHotel extends StatelessWidget {
  const CustomAmbrosiaHotel({super.key});
  static String id = 'CustomAmbrosiaHotel';
  // Future<void> _launchURL(String url) async {
  //   final Uri uri = Uri(scheme: "https", host: url);
  //   if (await launchUrl(
  //     uri,
  //     mode: LaunchMode.externalApplication,
  //   )) {
  //     throw "Can not launch url";
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(color: Colors.white),
        // automaticallyImplyLeading: false,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),
        elevation: 0,
        backgroundColor: Color(0xff32B768),
        title: Center(
          child: Text(
            "Details Restaurant ",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Container(
              height: 390,
              color: Color(0xffFFFFFF),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, right: 200, left: 8.0),
                    child: Text('Ambrosia Hotel ',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff1F2937))),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Icon(
                          Icons.location_on,
                          color: Color(0xff32B768),
                          size: 12,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'kazi Deiry, Taiger Pass Chittagong',
                          style: TextStyle(
                            color: Color(0xff6B7280),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      child: Image.asset(
                        'assest/Rectangle5.png',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Icon(
                                Icons.share_arrival_time_outlined,
                                color: Color(0xff32B768),
                                size: 15,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                'Always Open',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff6B7280),
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, top: 8.0),
                              child: Text(
                                '10:00 AM - 12:00 PM',
                                style: TextStyle(
                                    color: Color(0xff1F2937),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 70),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Icon(
                                      Icons.screen_share_outlined,
                                      color: Color(0xff2C8DFF),
                                      size: 15,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: TextButton(
                                      onPressed: () {
                                        launch(
                                            'https://www.tripadvisor.com/Hotel_Review-g188675-d1052678-Reviews-Ambrosia_Hotel-Ieper_Ypres_West_Flanders_Province.html');
                                      },
                                      child: Text(
                                        'Visit the Restaurant',
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff2C8DFF)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 250, top: 7),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, 'BookingItem');
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0XFF32B768),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              width: 88,
                              height: 28,
                              child: Center(
                                  child: Text(
                                'Book',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Color(0xffFFFFFF),
            child: Column(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 8, right: 200.0, top: 30.0),
                      child: Text('List other restaurant',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600)),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 15.0, bottom: 50),
                          child: Text('check the menu at this restaurant',
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
                                          color: Color(0xff32B768)))),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Color(0xff32B768),
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
                      image: 'assest/Rectangle 38.png',
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
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
