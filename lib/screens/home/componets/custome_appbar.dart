import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomeAppBa extends StatelessWidget {
  final IconData leading;

  final String trainling;
  const CustomeAppBa({
    super.key,
    required this.leading,
    required this.trainling,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          leading,
          size: 30,
        ),
        Row(
          children: [
            Icon(
              Icons.location_on_outlined,
              color: Colors.red,
              size: 25,
            ),
            Text(
              "Jakarta",
              style: GoogleFonts.breeSerif(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ],
        ),
        Image.asset(
          trainling,
          height: 40,
        ),
      ],
    );
  }
}
