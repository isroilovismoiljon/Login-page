import 'package:flutter/material.dart';

class FormPassword extends StatelessWidget {
  const FormPassword({
    super.key,
    required this.controllerPassword, required this.labelText,
  });

  final TextEditingController controllerPassword;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controllerPassword,
      style: TextStyle(color: Colors.white),
      obscureText: true,
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.key_sharp,
          color: Color(0XFFb2b2b2),
        ),
        suffixIcon: Icon(
          Icons.visibility,
          color: Color(0XFFb2b2b2),
        ),
        labelText: labelText,
        labelStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Color(0XFFb2b2b2),
        ),
        constraints: BoxConstraints(
          maxWidth: 400,
        ),
        filled: true,
        fillColor: Color(0XFF2C2C2C),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),

          borderSide: BorderSide(
            color: Color(0xFF3F3F3F),
            width: 2,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: Color(0xFF3F3F3F),
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: Color(0xFF3F3F3F),
            width: 1,
          ),
        ),
      ),
    );
  }
}
