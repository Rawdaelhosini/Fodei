import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CartBookingRestaurant extends StatelessWidget {
  CartBookingRestaurant(
      {this.text1,
      this.text,
      this.image,
      this.onpressed,
      this.onTap,
      this.textw,
      this.color,
      this.color2});
  String? text1;
  String? text;
  String? image;
  Function()? onpressed;
  VoidCallback? onTap;

  String? textw;
  Color? color;
  Color? color2;

  // ProductModel? product;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  blurRadius: 40,
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 0,
                  offset: Offset(10, 10)),
            ]),
            child: Card(
              elevation: 10,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.end,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(image!),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 350),
                        child: Text(
                          text!,
                          // product.title.substring(0 , 6),  // كده بختار يوريني حروف من اول فين

                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      // SizedBox(
                      //   height: 3,
                      // ),
                      Padding(
                        padding: const EdgeInsets.only(right: 250),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Color(0xff32B768),
                                  size: 10,
                                ),
                                TextButton(
                                  onPressed: onpressed!,
                                  child: Text(
                                    text1!,
                                    style: TextStyle(
                                      color: Color(0xff6B7280),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 0.0),
                                  child: Row(
                                    // mainAxisAlignment: MainAxisAlignment.end,
                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      GestureDetector(
                                        onTap: onTap,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: color!,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          width: 88,
                                          height: 28,
                                          child: Center(
                                              child: Text(
                                            textw!,
                                            style: TextStyle(color: color2!),
                                          )),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
