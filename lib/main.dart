import 'package:flutter/material.dart';
import 'package:hamari_silai_website/about.dart';
import 'package:hamari_silai_website/constants.dart';
import 'package:hamari_silai_website/landing.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hamari Silai',
      theme: ThemeData(fontFamily: 'Prompt', scaffoldBackgroundColor: bgColor),
      debugShowCheckedModeBanner: false,
      builder: (context, widget) => ResponsiveWrapper.builder(const Home(),
          maxWidth: 1200,
          minWidth: 480,
          defaultScale: true,
          breakpoints: const [
            ResponsiveBreakpoint.autoScale(480, name: MOBILE),
            ResponsiveBreakpoint.autoScale(2460, name: '4K'),
            ResponsiveBreakpoint.autoScaleDown(900, name: TABLET),
            ResponsiveBreakpoint.autoScale(1200, name: DESKTOP),
          ],
          background: Container(color: const Color(0xFFF5F5F5))),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [Landing(), About()],
            ),
          ),
          Align(
            alignment: Alignment(-0.95, -0.97),
            child: Image.asset(
              'hamari_silai_logo.png',
              height: 75,
              width: 75,
            ),
          ),
          Align(
              alignment: const Alignment(0.95, -0.9),
              child: Container(
                child: Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      FontAwesomeIcons.solidHeart,
                      size: 17,
                      color: const Color(0xffDD555C).withOpacity(0.36),
                    ),
                    const Text(
                      'Support Us',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                )),
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                    color: const Color(0xffFFC2C6),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                        offset:
                            const Offset(4, 3), // changes position of shadow
                      ),
                    ]),
              )),
          Align(
            alignment: const Alignment(-0.9, 0.9),
            child: Container(
              width: 420,
              height: 60,
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    spreadRadius: -1,
                    blurRadius: 31,
                    offset: const Offset(7, 8), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: GNav(
                  style: GnavStyle.google,
                  textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: bgColor,
                      fontSize: 11),
                  rippleColor: Colors.grey[300]!,
                  hoverColor: Colors.grey[100]!,
                  gap: 8,
                  activeColor: bgColor,
                  iconSize: 13,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  duration: const Duration(milliseconds: 400),
                  tabBackgroundColor: const Color(0xff101917),
                  color: Colors.black,
                  tabs: const [
                    GButton(
                      icon: FontAwesomeIcons.users,
                      text: 'About',
                    ),
                    GButton(
                      icon: FontAwesomeIcons.bullseye,
                      text: 'Mission',
                    ),
                    GButton(
                      icon: FontAwesomeIcons.chartLine,
                      text: 'Impact',
                    ),
                    GButton(
                      icon: FontAwesomeIcons.briefcase,
                      text: 'Work',
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
