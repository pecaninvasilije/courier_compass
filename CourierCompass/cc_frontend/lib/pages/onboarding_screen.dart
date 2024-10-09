import 'package:cc_frontend/pages/intro_screens/intro_page_1.dart';
import 'package:cc_frontend/pages/intro_screens/intro_page_2.dart';
import 'package:cc_frontend/pages/intro_screens/intro_page_3.dart';
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

  void _onButtonPressed() {
    if (_currentPage < 2) {
      _controller.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _onSkipPressed() {
    _controller.jumpToPage(2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: const [IntroPage1(), IntroPage2(), IntroPage3()],
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
                  onPressed: _onButtonPressed,
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
          Positioned(
            top: 40,
            right: 20,
            child: TextButton(
              onPressed: _onSkipPressed,
              child: const Text(
                'Skip',
                style: TextStyle(
                  color: Color(0xFFEFF1F4),
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
