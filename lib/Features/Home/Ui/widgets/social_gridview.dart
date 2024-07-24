import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loginui/Features/Home/Ui/widgets/social.dart';
import 'package:loginui/Features/Home/data/social_data.dart';

class SocialGridview extends StatelessWidget {
  const SocialGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12.w,
        mainAxisSpacing: 12.h,
      ),
      itemCount: social.length,
      itemBuilder: (context, index) {
        return Social(social: social[index]);
      },
    );
  }
}
