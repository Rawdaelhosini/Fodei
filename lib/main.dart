import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fodei/Screens/HomeScreen/HomeSccroll.dart';
import 'package:fodei/Screens/HomeScreen/Scroll.dart';
import 'package:fodei/Screens/HomeScreen/bookingitem.dart';

import 'package:fodei/Screens/HomeScreen/home.dart';
import 'package:fodei/Screens/HomeScreen/map.dart';
import 'package:fodei/Screens/Onboarding/first.dart';
import 'package:fodei/Screens/Onboarding/second.dart';
import 'package:fodei/Screens/Onboarding/third.dart';
import 'package:fodei/Screens/Registration/firrst.dart';

import 'package:fodei/components/loginbutton.dart';
import 'package:fodei/details/Oldies.dart';
import 'package:fodei/details/Macdonalds.dart';
import 'package:fodei/details/customAmbrosia.dart';
import 'package:fodei/details/detailes.dart';

import 'Screens/cubit/login_cubit/login_cubit.dart';
import 'Screens/cubit/register_cubit/register_cubit.dart';
import 'Screens/forgetPassword/EnterEmail.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // DarkThemProvider themeChengeProvider = DarkThemProvider();

  // void getCurrentAppTheme() async {
  //   themeChengeProvider.setDarkThem =
  //       await themeChengeProvider.darkThemPrefs.getTheme();
  // }

  // @override
  // void initState() {
  //   getCurrentAppTheme();
  //   super.initState();
  // }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginCubit()),
        BlocProvider(create: (context) => RegisterCubit()),
        // ChangeNotifierProvider(create: (_) {
        //   return themeChengeProvider;
        // })
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,

        routes: {
          FirstOnboarding.id: (context) => FirstOnboarding(),
          SecondOnboarding.id: (context) => SecondOnboarding(),
          ThirdOnboarding.id: (context) => ThirdOnboarding(),
          EnterEmail.id: (context) => EnterEmail(),
          First.id: (context) => First(),
          Home.id: (context) => Home(),
          BookinhItem.id: (context) => BookinhItem(),
          ScrollPage.id: (context) => ScrollPage(),
          HomeIcon.id: (context) => HomeIcon(),
          Maps.id: (context) => Maps(),
          loginButton.id: (context) => loginButton(),
          Details.id: (context) => Details(),
          CustomAmbrosiaHotel.id: (context) => CustomAmbrosiaHotel(),
          Haatkhola.id: (context) => Haatkhola(),
          HotelZamanRestaurant.id: (context) => HotelZamanRestaurant(),
        },
        initialRoute: FirstOnboarding.id,
        // home: FirstOnboarding(),
      ),
    );
  }
}
