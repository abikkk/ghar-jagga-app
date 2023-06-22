import 'package:flutter/material.dart';

// primary color
const MaterialColor customPrimary =
    MaterialColor(_customPrimaryValue, <int, Color>{
  50: Color(0xFFE0EBED),
  100: Color(0xFFB3CDD2),
  200: Color(0xFF80ACB5),
  300: Color(0xFF4D8B97),
  400: Color(0xFF267280),
  500: Color(_customPrimaryValue),
  600: Color(0xFF005162),
  700: Color(0xFF004857),
  800: Color(0xFF003E4D),
  900: Color(0xFF002E3C),
});
const int _customPrimaryValue = 0xFF00596A;

const MaterialColor customPrimaryAccent =
    MaterialColor(_customPrimaryAccentValue, <int, Color>{
  100: Color(0xFF72D5FF),
  200: Color(_customPrimaryAccentValue),
  400: Color(0xFF0CB7FF),
  700: Color(0xFF00AAF1),
});
const int _customPrimaryAccentValue = 0xFF3FC6FF;

// secondary color
const MaterialColor customSecondary =
    MaterialColor(_customSecondaryPrimaryValue, <int, Color>{
  50: Color(0xFFF4F2F0),
  100: Color(0xFFE3DED9),
  200: Color(0xFFD0C8C0),
  300: Color(0xFFBDB1A7),
  400: Color(0xFFAEA194),
  500: Color(_customSecondaryPrimaryValue),
  600: Color(0xFF988879),
  700: Color(0xFF8E7D6E),
  800: Color(0xFF847364),
  900: Color(0xFF736151),
});
const int _customSecondaryPrimaryValue = 0xFFA09081;

const MaterialColor customSecondaryAccent =
    MaterialColor(_customSecondaryAccentValue, <int, Color>{
  100: Color(0xFFFFEAD9),
  200: Color(_customSecondaryAccentValue),
  400: Color(0xFFFFB373),
  700: Color(0xFFFFA559),
});
const int _customSecondaryAccentValue = 0xFFFFCFA6;

// tertiary color
const MaterialColor customTertiary =
    MaterialColor(_customTertiaryPrimaryValue, <int, Color>{
  50: Color(0xFFF8FCFC),
  100: Color(0xFFECF8F8),
  200: Color(0xFFE0F3F3),
  300: Color(0xFFD4EEEE),
  400: Color(0xFFCAEAEB),
  500: Color(_customTertiaryPrimaryValue),
  600: Color(0xFFBBE3E4),
  700: Color(0xFFB3DFE0),
  800: Color(0xFFABDBDD),
  900: Color(0xFF9ED5D7),
});
const int _customTertiaryPrimaryValue = 0xFFC1E6E7;

const MaterialColor customTertiaryAccent =
    MaterialColor(_customTertiaryAccentValue, <int, Color>{
  100: Color(0xFFFFFFFF),
  200: Color(_customTertiaryAccentValue),
  400: Color(0xFFFFFFFF),
  700: Color(0xFFFBFFFF),
});
const int _customTertiaryAccentValue = 0xFFFFFFFF;
