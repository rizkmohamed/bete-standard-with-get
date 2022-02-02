import 'package:flutter/material.dart';
import 'package:prod_family/app/Shared/Colors.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
        // brightness: Brightness.light,
        primaryColor: KColor_Main_Primary_1,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Cairo',
        inputDecorationTheme: InputDecorationTheme(
          contentPadding: EdgeInsets.all(0),
          hintStyle: TextStyle(
            color: KColor_Text_Sec_1,
            fontSize: 12,
            fontWeight: FontWeight.normal,
          ),
          filled: false,
        ),
        checkboxTheme: CheckboxThemeData(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2),
            ),
            side: BorderSide(width: 1, color: Color(0xffE4E4E4))));
  }
}
