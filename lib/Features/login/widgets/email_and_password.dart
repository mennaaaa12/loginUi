import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loginui/Features/login/widgets/text_form_field.dart';
import 'package:loginui/theming/Styles/text_style.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
    bool isObscureText = false;

  @override
  Widget build(BuildContext context) {
    return   Form(
                 
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
                     
                    ],
                  ),
                );
  }
}