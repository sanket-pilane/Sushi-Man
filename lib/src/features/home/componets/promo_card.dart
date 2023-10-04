import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shushii_restarount_app/src/constants/constants.dart';

class PromoCard extends StatelessWidget {
  const PromoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 187, 78, 70),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                kHomePageBoxText,
                style: GoogleFonts.notoSerifArmenian(
                    color: Colors.white, fontSize: 18),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                padding: EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 138, 60, 55),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  "Shop Now",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          Image.asset(
            kRamenImage,
            height: 100,
          ),
        ],
      ),
    );
  }
}
