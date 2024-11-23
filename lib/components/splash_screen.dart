import 'package:baby_shop_hub/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    // Initialize the AnimationController
    _controller = AnimationController(
      duration: const Duration(seconds: 3), // Set duration to 5 seconds
      vsync: this,
    );

    // Fade-out animation
    _fadeAnimation = Tween<double>(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeOut,
      ),
    );

    // Start the fade-out animation
    Future.delayed(
      Duration(seconds: 3),
      () {
        _controller.forward().then((_) {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (_) => const Homepage()));
        });
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 255, 195, 195),
              Color.fromARGB(255, 252, 236, 236),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Center(
          child: FadeTransition(
            opacity: _fadeAnimation,
            child: Text(
              'Baby Shop hub',
              style: GoogleFonts.jua(
                textStyle: TextStyle(
                  color: const Color.fromARGB(255, 255, 106, 106),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
