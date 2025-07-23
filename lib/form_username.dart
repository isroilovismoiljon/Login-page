import 'package:flutter/material.dart';

class FormUsername extends StatelessWidget {
  const FormUsername({
    super.key,
    required this.controllerUsername, required this.labelText, required this.prefixIcon,
  });

  final TextEditingController controllerUsername;
  final String labelText;
  final Icon prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controllerUsername,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        labelText: labelText,
        labelStyle: TextStyle(
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
