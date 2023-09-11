import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Widget/cartBookingRestaurant.dart';

class HotelZamanRestaurant extends StatelessWidget {
  const HotelZamanRestaurant({super.key});
  static String id = 'HotelZamanRestaurant';
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
                    child: Text('McDonald ',
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
                          'Tarh Al Bahr, Port Said, Port Said',
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
                        'assest/Mac.png',
                        height: 182,
                        width: 339,
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
                                            'https://www.bing.com/maps?mepi=35%7ELocal%7ETopOfPage%7EEntity_Vertical_List_Card&ty=17&q=mcdonald%27s&segment=Local&ppois=31.265018463134766_32.3025016784668_McDonald%27s_YN8054x14901613897455349479%7E31.26428985595703_32.29204177856445_McDonald%27s_YN8054x12885797392673318765%7E31.270572662353516_32.311283111572266_McDonald%27s_YN8054x18047891628271114875%7E31.27096176147461_32.30056381225586_McDonald%27s_YN8054x1540406133659044834%7E&sei=0&cp=31.270642%7E32.311487&child=%26ty%3D18%26q%3DMcDonald%2527s%26ss%3Dypid.YN8054x1540406133659044834%26segment%3DLocal%26ppois%3D31.27096176147461_32.30056381225586_McDonald%2527s_YN8054x1540406133659044834%7E%26cp%3D31.270962%7E32.300564%26EnableMapViewChange%3Dtrue&FORM=SNAPST&lvl=11.4');
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
