import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loginui/Features/Home/Ui/widgets/categories_listview.dart';
import 'package:loginui/Features/Home/Ui/widgets/social_gridview.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CategoriesList(),
                SizedBox(height: 10.h),
                const SocialGridview(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
