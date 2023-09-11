import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fodei/Widget/custom_Button.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

// void initState() {
//   super.initState();
// }

class _AccountState extends State<Account> {
  String? myEmail;
  String? email;
  String? FullName;

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    // final themState = Provider.of<DarkThemProvider>(context);

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20),
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
                    width: 500,
                    height: 70,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Card(
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 8, top: 20, bottom: 10),
                          child: Row(
                            children: [
                              Icon(Icons.person, color: Color(0xff374151)),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                children: [
                                  FutureBuilder(
                                    future: _fetch(),
                                    builder: (context, snapshot) {
                                      if (snapshot.connectionState !=
                                          ConnectionState.done)
                                        return Text(
                                            'Loading data.....Please wait');
                                      return Text(
                                        ' $FullName',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff374151)),
                                      );
                                    },
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: FutureBuilder(
                                      future: _fetch(),
                                      builder: (context, snapshot) {
                                        if (snapshot.connectionState !=
                                            ConnectionState.done)
                                          return Text(
                                              'Loading data.....Please wait');
                                        return Text(
                                          '$myEmail',
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff6B7280)),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 120, bottom: 10),
                                child: Icon(Icons.notifications_none_outlined,
                                    color: Color(0xff374151)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Stack(
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
                width: 400,
                height: 70,
                child: Card(
                  elevation: 10,
                  child: Row(
                    children: [
                      TextButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.account_circle_outlined,
                            color: Color(0xff374151)),
                        label: Text(
                          'Account setting',
                          style: TextStyle(
                              color: Color(0xff374151),
                              fontWeight: FontWeight.w400,
                              fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 140),
                        child: Icon(Icons.note_alt_outlined,
                            color: Color(0xff374151)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Stack(
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
                width: 400,
                height: 70,
                child: Card(
                  elevation: 10,
                  child: Row(
                    children: [
                      TextButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.translate, color: Color(0xff374151)),
                        label: Text(
                          'Language',
                          style: TextStyle(
                              color: Color(0xff374151),
                              fontWeight: FontWeight.w400,
                              fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 170),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward_ios,
                                color: Color(0xff374151))),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Stack(
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
                width: 400,
                height: 70,
                child: Card(
                  elevation: 10,
                  child: Row(
                    children: [
                      TextButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.chat_bubble_outline,
                            color: Color(0xff374151)),
                        label: Text(
                          'Feedback',
                          style: TextStyle(
                              color: Color(0xff374151),
                              fontWeight: FontWeight.w400,
                              fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 170),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward_ios,
                                color: Color(0xff374151))),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Stack(
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
                width: 400,
                height: 70,
                child: Card(
                  elevation: 10,
                  child: Row(
                    children: [
                      TextButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.star_outline_rounded,
                            color: Color(0xff374151)),
                        label: Text(
                          'Rate us',
                          style: TextStyle(
                              color: Color(0xff374151),
                              fontWeight: FontWeight.w400,
                              fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 190),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward_ios,
                                color: Color(0xff374151))),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Stack(
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
                width: 400,
                height: 70,
                child: Card(
                  elevation: 10,
                  child: Row(
                    children: [
                      TextButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_circle_up_outlined,
                            color: Color(0xff374151)),
                        label: Text(
                          'New Version',
                          style: TextStyle(
                              color: Color(0xff374151),
                              fontWeight: FontWeight.w400,
                              fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 150),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward_ios,
                                color: Color(0xff374151))),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          CustomButton(
            onTap: () {
              Navigator.pushNamed(context, 'First');
            },
            textw: 'LogOut',
            color: Color(0xffEB4646),
            color2: Colors.white,
          ),
        ],
      ),
    );
  }

  _fetch() async {
    // ignore: unused_local_variable
    final firebaseUser = await FirebaseAuth.instance.currentUser!;
    // ignore: unnecessary_null_comparison
    if (firebaseUser != null) {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(firebaseUser.uid)
          .get()
          .then((ds) {
        FullName = ds.get('name');
        myEmail = ds.get('email');
        print(firebaseUser.uid);
        return [FullName, myEmail];
        // ignore: body_might_complete_normally_catch_error
      }).catchError((e) {
        // ignore: avoid_print
        print(e);
      });
    }
  }
}
