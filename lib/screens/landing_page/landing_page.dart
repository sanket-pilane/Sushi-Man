import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shushii_restarount_app/constants.dart';
import 'package:shushii_restarount_app/screens/hidden_drawer.dart';

import 'package:shushii_restarount_app/screens/landing_page/componets/my_button.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 163, 63, 55),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "SUSHIMAN",
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(kLandingPageImage),
              const SizedBox(
                height: 20,
              ),
              Text(
                kLandigPageTitle,
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 44,
                  color: Colors.white,
                ),
              ),
              Text(
                kLandingPageSubTitle,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: MyButton(
                  title: "Get Started",
                  onTap: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyDrawer(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
