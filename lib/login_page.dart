import 'package:firs_project/export_page_password.dart';
import 'package:firs_project/app_bar_title.dart';
import 'package:firs_project/form_password.dart';
import 'package:firs_project/form_username.dart';
import 'package:firs_project/register_now.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ScaffoldPage extends StatefulWidget {
  const ScaffoldPage({super.key});

  @override
  State<ScaffoldPage> createState() => _ScaffoldPageState();
}

class _ScaffoldPageState extends State<ScaffoldPage> {
  final controllerUsername = TextEditingController();
  final controllerPassword = TextEditingController();
  bool testBButton = true;

  @override
  void dispose() {
    controllerPassword.dispose();
    controllerUsername.dispose();
    super.dispose();
  }

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
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 27, right: 27, top: 171.5),
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppBarTitle(),
                    SizedBox(
                      height: 44.5.h,
                    ),
                    FormUsername(
                      controllerUsername: controllerUsername,
                      labelText: "Username or Email",
                      prefixIcon: Icon(
                        Icons.account_circle_rounded,
                        color: Color(0XFFb2b2b2),
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    ExportPagePassword(controllerPassword: controllerPassword),
                    SizedBox(
                      height: 46.h,
                    ),
                    Column(
                      spacing: 35,
                      children: [
                        TextButton(
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 148.5.h),
                            backgroundColor: Color(
                              testBButton ? 0xFF00A3B7 : 0xFF1873EB,
                            ),
                          ),
                          child: Text(
                            "Login",
                            style: TextStyle(color: Color(0xFFEAEAEA)),
                          ),
                          onPressed: () {
                            testBButton = !testBButton;
                            setState(() {});
                          },
                        ),
                        Align(
                          child: Text(
                            "Or login with",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFEAEAEA),
                            ),
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
                      ],
                    ),
                    SizedBox(
                      height: 103.5.h,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Not have an account?",
                            style: TextStyle(color: Colors.white),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) => RegisterNow(),
                                ),
                              );
                            },
                            child: Text(
                              "Register now",
                              style: TextStyle(color: Color(0xFF00A3B7)),
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
      ),
    );
  }
}

// "Welcome back" va "Please login to enjoy full feature"
