import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loginui/Features/login/widgets/checkbox.dart';
import 'package:loginui/Features/login/widgets/email_and_password.dart';
import 'package:loginui/Features/login/widgets/login_app_bar.dart';
import 'package:loginui/Features/login/widgets/login_button.dart';
import 'package:loginui/Features/login/widgets/login_image.dart';
import 'package:loginui/Features/login/widgets/donot_have_register.dart';

class LoginApp extends StatefulWidget {
  const LoginApp({super.key});

  @override
  State<LoginApp> createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 5.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const LoginImage(),
                const EmailAndPassword(),
                SizedBox(height: 5.h),
                const CheckboxWidget(),
                SizedBox(height: 15.h),
                const LoginButton(),
                SizedBox(height: 25.h),
                const DontHaveAccountText()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
