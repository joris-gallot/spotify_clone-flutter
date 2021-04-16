import 'package:flutter/material.dart';

const MaterialColor primary = MaterialColor(_primaryPrimaryValue, <int, Color>{
  50: Color(0xFFE8F7EB),
  100: Color(0xFFC6EACC),
  200: Color(0xFFA0DCAA),
  300: Color(0xFF7ACE88),
  400: Color(0xFF5EC46F),
  500: Color(_primaryPrimaryValue),
  600: Color(0xFF3BB24E),
  700: Color(0xFF32AA44),
  800: Color(0xFF2AA23B),
  900: Color(0xFF1C932A),
});
const int _primaryPrimaryValue = 0xFF41B955;

const MaterialColor primaryAccent = MaterialColor(_primaryAccentValue, <int, Color>{
  100: Color(0xFFCCFFD1),
  200: Color(_primaryAccentValue),
  400: Color(0xFF66FF76),
  700: Color(0xFF4DFF5F),
});
const int _primaryAccentValue = 0xFF99FFA3;
