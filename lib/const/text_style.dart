import 'package:flutter/material.dart';

import 'colors.dart';
ourStyle({family = 'regular', color = whiteColor, double? size = 14}){
   TextStyle(
      fontSize: size,
      fontFamily: family,
      color: color,
  );
}