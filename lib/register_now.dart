import 'package:firs_project/export_input_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'form_password.dart';
import 'form_username.dart';
import 'login_page.dart';

class RegisterNow extends StatefulWidget {
  const RegisterNow({super.key});

  @override
  State<RegisterNow> createState() => _RegisterNowState();
}

class _RegisterNowState extends State<RegisterNow> {
  final controllerUsername = TextEditingController();
  final controllerEmail = TextEditingController();
  final controllerPassword = TextEditingController();
  final controllerConfirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF1E1E1E),
              Color(0xFF2D2D2D).withValues(alpha: 0.9),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 26,
            right: 28,
            top: 110,
            bottom: 11,
          ),
          child: SingleChildScrollView(
            child: Form(
              child: Column(
                spacing: 44,
                children: [
                  Column(
                    spacing: 10,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        spacing: 6.5,
                        children: [
                          Text(
                            "Welcome to",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "NowTV",
                            style: TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontSize: 22,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Create an account to explore amazing feature",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    spacing: 40,
                    children: [
                      FormUsername(
                        controllerUsername: controllerUsername,
                        labelText: 'Username or Email',
                        prefixIcon: Icon(
                          Icons.account_circle_rounded,
                          color: Color(0XFFb2b2b2),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Username or Email required";
                          } else if (value.length < 3) {
                            return "Must be minimum 3 character";
                          } else {
                            return null;
                          }
                        },
                      ),
                      FormUsername(
                        controllerUsername: controllerEmail,
                        labelText: 'Email',
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: Color(0XFFb2b2b2),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Email required";
                          } else if (!RegExp(
                            r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}$',
                          ).hasMatch(value)) {
                            return "Email is incorrect";
                          } else if (value.length < 3) {
                            return "Must be minimum 3 character";
                          } else {
                            return null;
                          }
                        },
                      ),
                      ExportInputPassword(
                        controllerPassword: controllerPassword,
                        labelText: 'Password',
                      ),
                      ExportInputPassword(
                        controllerPassword: controllerConfirmPassword,
                        labelText: 'Confirm Password',
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      foregroundColor: Color(0xFFEAEAEA),
                      backgroundColor: Color(0xFF00A3B7),
                      padding: EdgeInsets.symmetric(horizontal: 139.5.h),
                    ),
                    child: Text(
                      "Register",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Text(
                    "Or register with",
                    style: TextStyle(
                      color: Color(0xFFEAEAEA),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 40,
                    children: [
                      Container(
                        padding: EdgeInsets.all(11),
                        width: 50.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Color(0xFF353535),
                        ),
                        child: SvgPicture.asset("assets/Google.svg"),
                      ),

                      Container(
                        padding: EdgeInsets.all(11),
                        width: 50.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                          color: Color(0xFF353535),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: SvgPicture.asset("assets/Facebook.svg"),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Have an account?",
                          style: TextStyle(
                            color: Color(0xFFEAEAEA),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: Color(0xFF00A3B7),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => ScaffoldPage(),
                              ),
                            );
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
