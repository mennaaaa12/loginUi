import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loginui/Core/widgets/text_widget.dart';
import 'package:loginui/Features/login/widgets/text_form_field.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObscureText = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const Align(
              alignment: Alignment.bottomLeft,
              child: TextWidget(
                text: 'Eail Address',
              )),
          SizedBox(height: 5.h),
          const CustomTextFormField(
              // hintText: 'Email',
              ),
          SizedBox(height: 25.h),
          const Align(
              alignment: Alignment.bottomLeft,
              child: TextWidget(
                text: 'Password',
              )),
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
                isObscureText ? Icons.visibility_off : Icons.visibility,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
