import 'package:parceltracker/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ui/screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Parcel Tracker',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF111d5e),
        ),
        textTheme: TextTheme(
          headline1: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          headline2: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          headline3: GoogleFonts.poppins(
            color: const Color(0xFF111111),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          headline4: GoogleFonts.poppins(
            color: const Color(0xFF111111),
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
          headline5: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
          headline6: GoogleFonts.poppins(
            color: Theme.of(context).unselectedWidgetColor,
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
          bodyText1: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          bodyText2: GoogleFonts.poppins(
            color: const Color(0xFF111111),
            fontSize: 9,
            fontWeight: FontWeight.bold,
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            )),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
          ),
        ),
        unselectedWidgetColor: Color(0x50333333),
        shadowColor: Color(0xFFe6e6e6).withOpacity(0.5),
        backgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Poppins',
      ),
      home: const HomeScreen(),
    );
  }
}
