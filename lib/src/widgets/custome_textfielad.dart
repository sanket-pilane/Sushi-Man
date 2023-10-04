import 'package:flutter/material.dart';

class CustomeTextField extends StatelessWidget {
  final String hintText;
  final Icon icon;
  final TextEditingController controller;
  final bool obscureText;
  const CustomeTextField(
      {super.key,
      required this.hintText,
      required this.icon,
      required this.controller,
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(30),
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(30)),
          prefixIcon: icon,
          prefixIconColor: Colors.black,
          label: Text(hintText),
          labelStyle:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        obscureText: obscureText,
        controller: controller,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
