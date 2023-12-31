import 'package:flutter/material.dart';

import 'constants.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Muli",
    appBarTheme: appBarTheme(),
    textTheme: TextTheme(),
    inputDecorationTheme: InputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );  
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: BorderSide(color: kTextColor),  
              gapPadding: 10,          
           );
  return InputDecorationTheme(
            // If you are using latest version of flutter then label text and hint text shown like
            //if you r using flutter less then 1.20.* then maybe this is not working properly
            // of we are define our floatingBehavior in our theme then its not applayed
            //floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding: 
                EdgeInsets.symmetric(horizontal: 45, vertical: 20),
            enabledBorder: outlineInputBorder,
           focusedBorder: outlineInputBorder,
           border: outlineInputBorder,
  );   
}


TextTheme textTheme() {
  return TextTheme(
    bodyText1: TextStyle(color: kTextColor),
    bodyText2: TextStyle(color: kTextColor),
  );
}
AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: Colors.white,
    elevation: 0,
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: Colors.black),
    textTheme: TextTheme(
      headline6: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
    ),
  );
}
