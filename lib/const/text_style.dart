import 'package:flutter/material.dart';

import 'colors.dart';

const bold = 'bold';
const regular = 'regular';

myStyle({family = regular, color = whiteColor, double? size = 14}){
   TextStyle(
      fontSize: size,
      fontFamily: family,
      color: color,
  );
}