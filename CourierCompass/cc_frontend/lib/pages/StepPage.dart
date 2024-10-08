import 'package:flutter/material.dart';

void main() {
  runApp(const StepPageApp());
}

class StepPageApp extends StatelessWidget {
  const StepPageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: StepPageView(),
    );
  }
}

class StepPageView extends StatefulWidget {
  const StepPageView({super.key});

  @override
  _StepPageViewState createState() => _StepPageViewState();
}

class _StepPageViewState extends State<StepPageView> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Step Pages'),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (int index) {
                setState(() {
                  _currentPage = index;
                });
              },
              children: [
                buildPageContent('Content for Page 1'),
                buildPageContent('Content for Page 2'),
                buildPageContent('Content for Page 3'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                if (_currentPage < 2) {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                } else {
                  // Do something when "Get Started" is pressed
                  print('Get Started pressed');
                }
              },
              child: Text(_currentPage == 2 ? 'Get Started' : 'Continue'),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildPageContent(String content) {
    return Center(
      child: Text(
        content,
        style: const TextStyle(fontSize: 24),
      ),
    );
  }
}
