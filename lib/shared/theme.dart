import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'colors/colors.dart';

ThemeData lightTheme = ThemeData(
    primarySwatch: defaultColor,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      titleSpacing: 20.0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
      backgroundColor: Colors.white,
      elevation: 0.0,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: kClub,
      unselectedItemColor: Colors.grey,
      elevation: 20.0,
      backgroundColor: Colors.white,
    ),
    textTheme: const TextTheme(
      headline6: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          color: Colors.black
      ),
      bodyText1: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
            color: Colors.black
        ),
      bodyText2: TextStyle(
          fontSize: 13.0,
          color: Colors.black
      ),
      caption: TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.bold,
          color: Colors.grey
      ),
      subtitle2: TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.bold,
          color: Colors.grey
      ),
    ),
    iconTheme: const IconThemeData(
        color: Colors.black
    ),
    dividerTheme: const DividerThemeData(
      color: Colors.black,
      thickness: .9,
    ),
    cardTheme: const CardTheme(
      color: Colors.white,
      shadowColor: Colors.black,
    ),
    textButtonTheme:  TextButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: Colors.white,
        primary: Colors.white
      ),
    ),
    backgroundColor: Colors.grey,
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.white
    ),
    fontFamily: 'assets/fonts/Poppins-Regular.ttf'
);
//-----------------------------------------------------------------------
ThemeData darkTheme = ThemeData(
    primarySwatch: defaultColor,
    scaffoldBackgroundColor: HexColor('333739'),
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: HexColor('333739'),
        statusBarIconBrightness: Brightness.light,
      ),
      backgroundColor: HexColor('333739'),
      elevation: 0.0,
      titleTextStyle: const TextStyle(
        color: Colors.white,
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: HexColor('333739'),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.deepOrange,
      unselectedItemColor: Colors.grey,
      elevation: 20.0,
    ),
    textTheme: const TextTheme(
        //header Category
        headline6: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          color: Colors.white
      ),
        bodyText1: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
            color: Colors.white
        ),
        bodyText2: TextStyle(
            fontSize: 13.0,
            color: Colors.white
        ),
        caption: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.bold,
            color: Colors.grey
        ),
      subtitle2: TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.bold,
          color: Colors.white
      ),

    ),
    iconTheme: const IconThemeData(
      color: Colors.white
    ),
    dividerTheme: const DividerThemeData(
      color: Colors.white,
      thickness: .9,
    ),
    cardTheme: const CardTheme(
      color: Colors.grey,
      shadowColor: Colors.black,
    ),
    textButtonTheme:  TextButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: Colors.grey,
        primary: Colors.grey,
      ),
    ),
    backgroundColor: Colors.white,
    bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Colors.grey
    ),
    fontFamily: 'assets/fonts/Poppins-Regular.ttf'
);
//-----------------------------------------------------------------------



