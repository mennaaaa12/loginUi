import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loginui/Core/theming/Colors/colors.dart';
import 'package:loginui/Core/theming/Styles/text_style.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key, this.hintText, this.suffixIcon, this.isObScure});
  final String? hintText;
  final Widget? suffixIcon;
  final bool? isObScure;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10.0,
      shadowColor: Colors.black,
      borderRadius: BorderRadius.circular(16.r),
      child: TextFormField(
        decoration: InputDecoration(
          isDense: true,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.h, vertical: 18.h),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: const BorderSide(
              color: Colors.black,
              width: 1.3,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: const BorderSide(
              color: Colors.white,
              width: 1.3,
            ),
          ),
          hintText: hintText,
          suffixIcon: suffixIcon,
          fillColor: ColorsApp.moreLightGray,
          filled: true,
          hintStyle: TextStyles.font12lightgreyRegular,
        ),
        obscureText: isObScure ?? false,
        style: TextStyles.font12darkbluemeduim,
      ),
    );
  }
}
