import 'package:flutter/material.dart';

class BookinhItem extends StatelessWidget {
  const BookinhItem({super.key});
  static String id = 'BookingItem';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: false,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),
        elevation: 0,
        backgroundColor: Color(0xff32B768),
        title: Center(
          child: Text(
            "Booking History ",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
