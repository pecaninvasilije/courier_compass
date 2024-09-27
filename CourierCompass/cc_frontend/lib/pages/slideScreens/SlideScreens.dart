import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstStartPage extends StatelessWidget {
  const FirstStartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF141924),
      body: Column(
        children: [
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Transform.translate(
                offset: const Offset(0, -100),
                child: SvgPicture.asset('assets/svg/truck.svg'),
              ),
              Text(
                "Ship your Parcel",
                style: TextStyle(
                  fontFamily: GoogleFonts.inter().fontFamily,
                  fontWeight: FontWeight.w800,
                  color: const Color(0xFFFFFFFF),
                  fontSize: 28.0,
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Experience smooth and completely stress-free shipping of your parcels",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: GoogleFonts.inter().fontFamily,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF8A9199),
                    fontSize: 17.0,
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Column(
              children: [
                SizedBox(
                  width: 335,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () {
                      // Second Page
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                        "Continue",
                      style: TextStyle(
                        fontFamily: GoogleFonts.inter().fontFamily,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF21252C),
                        fontSize: 19.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      width: 20,
                      height: 5,
                      decoration: BoxDecoration(
                        color: index == 0 ? Colors.white : const Color(0xFF2B303A),
                        borderRadius: BorderRadius.circular(2.5),
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}