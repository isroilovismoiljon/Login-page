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
          child: Padding(
            padding: const EdgeInsets.only(left: 27, right: 27, top: 171.5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome back,",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFEAEAEA),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Please login to enjoy full feature",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFEAEAEA),
                  ),
                ),
                SizedBox(
                  height: 44.5.h,
                ),
                TextField(
                  controller: controllerUsername,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.account_circle_rounded,
                      color: Color(0XFFb2b2b2),
                    ),
                    labelText: "Username or Email",
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0XFFb2b2b2),
                    ),
                    constraints: BoxConstraints(
                      maxWidth: 400,
                    ),
                    filled: true,
                    fillColor: Color(0XFF3F3F3F),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),

                      borderSide: BorderSide(
                        color: Color(0xFF878787),
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Color(0xFF878787),
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Color(0xFF878787),
                        width: 1,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Column(
                  children: [
                    TextField(
                      controller: controllerPassword,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.key_sharp,
                          color: Color(0XFFb2b2b2),
                        ),
                        suffixIcon: Icon(
                          Icons.visibility,
                          color: Color(0XFFb2b2b2),
                        ),
                        labelText: "Password",
                        labelStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0XFFb2b2b2),
                        ),
                        constraints: BoxConstraints(
                          maxWidth: 400,
                        ),
                        filled: true,
                        fillColor: Color(0XFF3F3F3F),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),

                          borderSide: BorderSide(
                            color: Color(0xFF878787),
                            width: 2,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Color(0xFF878787),
                            width: 1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Color(0xFF878787),
                            width: 1,
                          ),
                        ),
                      ),
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
                ),
                SizedBox(
                  height: 46.h,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 148.5.h),
                    backgroundColor: Color(0xFF00A3B7),
                  ),
                  child: Text(
                    "Login",
                    style: TextStyle(color: Color(0xFFEAEAEA)),
                  ),
                  onPressed: () {},
                ),
                SizedBox(
                  height: 35.h,
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
                SizedBox(
                  height: 34.h,
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
                Spacer(
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
                        onPressed: () {},
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
    );
  }
} // "Welcome back" va "Please login to enjoy full feature"
