import 'package:flutter/material.dart';
import 'package:loginui/Core/theming/Styles/text_style.dart';
import 'package:loginui/Features/Home/UI/home.dart';
import 'package:loginui/Features/login/widgets/button.dart';

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
