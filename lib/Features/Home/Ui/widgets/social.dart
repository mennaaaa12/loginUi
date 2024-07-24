import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loginui/Features/Home/models/social_model.dart';

class Social extends StatelessWidget {
  const Social({super.key, required this.social});

  final SocialModel social;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.all(10.w),
        child: Image.asset(
          social.image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
