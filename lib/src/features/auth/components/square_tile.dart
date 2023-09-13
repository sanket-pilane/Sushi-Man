import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String logo;
  const SquareTile({super.key, required this.logo});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Colors.grey.shade200,
          )),
      child: Image.asset(
        logo,
        height: 30,
      ),
    );
  }
}
