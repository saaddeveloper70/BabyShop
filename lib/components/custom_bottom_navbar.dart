import 'package:baby_shop_hub/screens/homepage.dart';
import 'package:baby_shop_hub/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hugeicons/hugeicons.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _currentIndex = 0; // Track the current index

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return BottomNavigationBar(
      onTap: (index) {
        setState(() {
          _currentIndex = index; // Update the current index
        });
        // Navigate to the desired route based on the index
        if (index == 0) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (_) => const Home(),
            ),
          );
        }
        if (index == 4) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (_) => const Profile(),
            ),
          );
        }
      },
      items: [
        BottomNavigationBarItem(
          icon: HugeIcon(
            icon: HugeIcons.strokeRoundedHome11,
            color: _currentIndex == 0
                ? Color.fromARGB(255, 255, 106, 106)
                : Colors.grey, // Set color based on selection
            size: screenWidth * 0.06,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: HugeIcon(
            icon: HugeIcons.strokeRoundedSearch01,
            color: _currentIndex == 1
                ? Color.fromARGB(255, 255, 106, 106)
                : Colors.grey, // Set color based on selection
            size: screenWidth * 0.06,
          ),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: HugeIcon(
            icon: HugeIcons.strokeRoundedStar,
            color: _currentIndex == 2
                ? Color.fromARGB(255, 255, 106, 106)
                : Colors.grey, // Set color based on selection
            size: screenWidth * 0.06,
          ),
          label: 'New',
        ),
        BottomNavigationBarItem(
          icon: HugeIcon(
            icon: HugeIcons.strokeRoundedShoppingBasket01,
            color: _currentIndex == 3
                ? Color.fromARGB(255, 255, 106, 106)
                : Colors.grey, // Set color based on selection
            size: screenWidth * 0.06,
          ),
          label: 'Favorite',
        ),
        BottomNavigationBarItem(
          icon: HugeIcon(
            icon: HugeIcons.strokeRoundedUser,
            color: _currentIndex == 4
                ? Color.fromARGB(255, 255, 106, 106)
                : Colors.grey, // Set color based on selection
            size: screenWidth * 0.06,
          ),
          label: 'Profile',
        ),
      ],
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      backgroundColor: const Color.fromARGB(255, 255, 244, 244),
      elevation: 0,
      currentIndex: _currentIndex,
      selectedItemColor: Color.fromARGB(255, 255, 106, 106),
      unselectedItemColor: Colors.grey,
      selectedLabelStyle: GoogleFonts.jua(
        textStyle: TextStyle(
          color: Color.fromARGB(255, 255, 106, 106),
          fontSize: screenWidth * 0.03,
        ),
      ),
      unselectedLabelStyle: GoogleFonts.jua(
        textStyle: TextStyle(
          color: Colors.grey,
          fontSize: screenWidth * 0.03,
        ),
      ),
    );
  }
}
