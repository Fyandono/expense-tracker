import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  final dynamic controller;
  final String labelText;
  final bool? obscureText;
  final int? maxLength;
  final dynamic keyboardType;
  final dynamic icon;
  final dynamic suffixIcon;
  final dynamic floatingLabelBehavior;
  final double height; // Add a new property for height

  const MyTextFormField({
    super.key, // Change 'super.key' to 'Key? key'
    required this.controller,
    required this.labelText,
    this.maxLength,
    this.keyboardType,
    this.obscureText,
    this.floatingLabelBehavior,
    this.icon,
    this.suffixIcon,
    this.height = 48.0, // Default height value
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height, // Set the desired height
      child: TextFormField(
        controller: controller,
        obscureText: obscureText ?? false,
        maxLength: maxLength,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(16.0),
          labelText: labelText,
          floatingLabelBehavior: floatingLabelBehavior,
          prefixIcon: icon != null ? Icon(icon) : null,
          suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
        ),
      ),
    );
  }
}
