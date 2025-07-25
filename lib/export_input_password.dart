import 'package:flutter/material.dart';

import 'form_password.dart';

class ExportInputPassword extends StatelessWidget {
  const ExportInputPassword({
    super.key,
    required this.controllerPassword,
    required this.labelText,
  });

  final TextEditingController controllerPassword;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return FormPassword(
      controllerPassword: controllerPassword,
      labelText: labelText,
      validator: (value) {
        if (value == null || value.length < 8) {
          return "Password must be minimum 8 characters and numbers";
        } else if (!(value.codeUnitAt(0) >= "A".codeUnitAt(0) &&
            value.codeUnitAt(0) <= "Z".codeUnitAt(0))) {
          return "Birinchi belgi katta harf bo'lishi kerak";
        }
        return null;
      },
    );
  }
}
