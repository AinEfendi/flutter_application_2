import 'package:flutter/material.dart';
import 'option_screen.dart'; // Import the option screen

// Splash screen with fade-in and fade-out animation
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);

    _controller.repeat(reverse: true); // Fade in and out repeatedly
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _navigateToOptionScreen() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const OptionScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: _navigateToOptionScreen, // Waits for user tap to navigate
        child: Center(
          child: FadeTransition(
            opacity: _animation,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/YenYen.png',
                  height: 150,
                  width: 150,
                ),
                const SizedBox(height: 16),
                const Text(
                  'Tap to Continue',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

