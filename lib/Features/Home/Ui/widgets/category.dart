import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loginui/Features/Home/models/category_model.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.category});
  final Category category;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.only(right: 10.w,top: 16.h),
      child:  CircleAvatar(
        backgroundImage: AssetImage(category.image),
        radius: 50,
      ),
    );
  }
}