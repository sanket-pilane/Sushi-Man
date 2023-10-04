import 'package:flutter/material.dart';

class CustomeSearchBar extends StatelessWidget {
  const CustomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 20),
      child: TextField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(32),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(32),
          ),
          fillColor: Colors.white,
          filled: true,
          hintText: "Search here",
          hintStyle: TextStyle(
            color: Colors.grey.shade400,
            fontSize: 20,
          ),
          prefixIcon: Icon(
            Icons.search,
            size: 30,
          ),
          contentPadding: EdgeInsets.zero,
        ),
      ),
    );
  }
}
