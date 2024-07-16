// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loginui/theming/Colors/colors.dart';

class TextStyles{
  static TextStyle font12darkbluemeduim = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: ColorsApp.darkgrey
  );
   static TextStyle font12lightgreyRegular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: ColorsApp.lightGray
  );
 
    static TextStyle font12greybold = TextStyle(
   color: Colors.grey,
   fontWeight: FontWeight.bold,
   fontSize: 12.sp,
    );
    static TextStyle font12greenbold = TextStyle(
   color: ColorsApp.morelightgreen,
   fontWeight: FontWeight.bold,
   fontSize: 12.sp,
    );
    
  static TextStyle font12semiboldwhit = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: Colors.white
  );
}