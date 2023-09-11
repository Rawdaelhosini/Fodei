import 'package:flutter/material.dart';

class CustomDetail extends StatelessWidget {
  const CustomDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 40,
              width: 50,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    blurRadius: 40,
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 0,
                    offset: Offset(10, 10)),
              ]),
              child: Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, right: 390),
                  child: Column(
                    children: [
                      Text(
                        'Tava Restaurant',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 7.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Color(0xff32B768),
                              size: 10,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'kazi Deiry, Taiger Pass,Chittagong',
                                style: TextStyle(
                                  color: Color(0xff6B7280),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        'assest/Rectangle5.png',
                        height: 339,
                        width: 339,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
