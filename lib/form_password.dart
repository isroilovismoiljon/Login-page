import 'package:flutter/material.dart';

class FormPassword extends StatefulWidget {
  const FormPassword({
    super.key,
    required this.controllerPassword,
    required this.labelText,
    required this.validator,
  });

  final TextEditingController controllerPassword;
  final String labelText;
  final String? Function(String?) validator;

  @override
  State<FormPassword> createState() => _FormPasswordState();
}

class _FormPasswordState extends State<FormPassword> {
  bool visibleIcon = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.visiblePassword,
      controller: widget.controllerPassword,
      validator: widget.validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      style: TextStyle(color: Colors.white),
      obscureText: visibleIcon,
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.key_sharp,
          color: Color(0XFFb2b2b2),
        ),
        suffixIcon: IconButton(
          onPressed: () {
            visibleIcon = !visibleIcon;
            setState(() {});
          },
          icon: visibleIcon
              ? Icon(
                  Icons.visibility,
                  color: Color(0XFFb2b2b2),
                )
              : Icon(
                  Icons.visibility_off,
                  color: Color(0XFFb2b2b2),
                ),
        ),
        labelText: widget.labelText,
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
