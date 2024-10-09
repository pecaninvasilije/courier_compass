import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF141924),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/svg/truck.svg'),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: Text(
                    "Ship The Parcels",
                    style: TextStyle(
                      color: const Color(0xFFEFF1F4),
                      fontSize: 24,
                      fontFamily: GoogleFonts.inter().fontFamily,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: Text(
                    "Experience smooth and completely stress-free parcel delivering with CourierCompass",
                    style: TextStyle(
                      color: const Color(0xFF8A9199),
                      fontSize: 16,
                      fontFamily: GoogleFonts.inter().fontFamily,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}