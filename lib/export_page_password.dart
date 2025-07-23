import 'package:firs_project/app_bar_title.dart';
import 'package:firs_project/form_password.dart';
import 'package:firs_project/form_username.dart';
import 'package:firs_project/register_now.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ExportPagePassword extends StatelessWidget {
  const ExportPagePassword({
    super.key,
    required this.controllerPassword,
  });

  final TextEditingController controllerPassword;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FormPassword(
          controllerPassword: controllerPassword,
          labelText: 'Password',
        ),
        SizedBox(
          height: 10.h,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            "Forgot password?",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xFFEAEAEA),
            ),
          ),
        ),
      ],
    );
  }
}
