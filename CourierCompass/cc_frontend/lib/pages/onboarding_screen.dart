import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _currentPage = _controller.page?.round() ?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              Container(
                color: const Color(0xFF141924),
              ),
              Container(
                color: const Color(0xFF141924),
              ),
              Container(
                color: const Color(0xFF141924),
              ),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.9),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: CustomizableEffect(
                activeDotDecoration: DotDecoration(
                  width: 24,
                  height: 4,
                  color: const Color(0xFFEFF1F4),
                  borderRadius: BorderRadius.circular(2),
                ),
                dotDecoration: DotDecoration(
                  width: 12,
                  height: 4,
                  color: const Color(0xFF2B303A),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 125.0),
              child: SizedBox(
                width: 335,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    // Add your onPressed code here!
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFD7E0EE),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    _currentPage == 2 ? 'Get Started' : 'Continue',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: GoogleFonts.inter().fontFamily,
                      color: const Color(0xFF21252C),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}