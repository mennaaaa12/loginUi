import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loginui/theming/Colors/colors.dart';
import 'package:loginui/theming/Styles/text_style.dart';
import 'package:loginui/widgets/button.dart';
import 'package:loginui/widgets/donot_have_register.dart';
import 'package:loginui/widgets/text_form_field.dart';

class LoginApp extends StatefulWidget {
  const LoginApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginAppState createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {
  bool isObscureText = true;
  bool isRememberMeChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title:  Text('Account Login',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp),),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
           
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 5.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               
                Align(
                  alignment: Alignment.center,
                  child:Image.asset('assets/image/image.png' , width: 300.w, height: 300.h,),
                ),
                // SizedBox(height: 60.h),
                Form(
                 
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text('Email Address',
                            style: TextStyles.font12greybold),
                      ),
                      SizedBox(height: 5.h),
                      const CustomTextFormField(
                       // hintText: 'Email',
                      ),
                      SizedBox(height: 25.h),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child:
                            Text('Password', style: TextStyles.font12greybold),
                      ),
                     
                      SizedBox(height: 5.h),
                      CustomTextFormField(
                        // hintText: 'Password',
                        isObScure: isObscureText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                          child: Icon(
                            isObscureText
                                ? Icons.visibility
                                : Icons.visibility_off,
                                color: Colors.grey,
                          ),
                        ),
                      ),
                        SizedBox(height: 5.h),
                      CheckboxListTile(
                        title: Text('Remember me', style: TextStyles.font12greybold),
                        value: isRememberMeChecked,
                        onChanged: (newValue) {
                          setState(() {
                            isRememberMeChecked = newValue ?? false;
                          });
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                        contentPadding: EdgeInsets.zero,
                        activeColor: ColorsApp.morelightgreen,
                      ),
                      SizedBox(height: 15.h),
                      AppTextButton(
                        buttonText: 'Login',
                        textStyle: TextStyles.font12semiboldwhit,
                        onPressed: () {},
                      ),
                       SizedBox(height: 25.h),
                     const DontHaveAccountText()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
