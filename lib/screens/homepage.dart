import 'package:baby_shop_hub/components/custom_bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final int _selectedIndex = 0; // Track the selected index

  // Function to handle bottom navigation bar item taps

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 255, 106, 106),
        centerTitle: true,
        title: Text(
          'Baby Shop Hub'.toUpperCase(),
          style: GoogleFonts.jua(
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: screenWidth * 0.06,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Center(
        child: Text('Selected Index: $_selectedIndex'), // Example body
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
