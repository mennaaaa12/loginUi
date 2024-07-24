import 'package:flutter/material.dart';
import 'package:loginui/theming/Colors/colors.dart';
import 'package:loginui/theming/Styles/text_style.dart';

class CheckboxWidget extends StatefulWidget {
  const CheckboxWidget({super.key});

  @override
  State<CheckboxWidget> createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  bool isRememberMeChecked = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
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
    );
  }
}
