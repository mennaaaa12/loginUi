import 'package:flutter/material.dart';
import 'package:loginui/Features/Home/UI/home.dart';
import 'package:loginui/Features/login/widgets/button.dart';
import 'package:loginui/theming/Styles/text_style.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextButton(
      buttonText: 'Login',
      textStyle: TextStyles.font12semiboldwhit,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Home()),
        );
      },
    );
  }
}
