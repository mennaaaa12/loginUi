import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loginui/Features/Home/Ui/widgets/category.dart';
import 'package:loginui/Features/Home/data/categor_data.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:120.h,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return CategoryWidget(category: categories[index],);
        },
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}