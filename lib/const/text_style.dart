import 'package:flutter/material.dart';

import 'colors.dart';


const calibri = 'Calibri';

myStyle({family = calibri, color = whiteColor, double? size = 14,fontWeight = FontWeight.normal}){
   TextStyle(
      fontSize: size,
      fontFamily: calibri,
      color: color,
     fontWeight: fontWeight
  );
}