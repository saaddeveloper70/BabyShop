import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hugeicons/hugeicons.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          // Top Section
          Container(
            width: double.infinity,
            height: screenHeight * 0.06, // Top section height
            color: const Color.fromARGB(255, 255, 106, 106),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Left Icon
                  HugeIcon(
                    icon: HugeIcons.strokeRoundedNotification03,
                    color: Colors.white,
                    size: 20.0,
                  ),
                  SizedBox(width: 10),
                  // Right Icon
                  HugeIcon(
                    icon: HugeIcons.strokeRoundedSettings02,
                    color: Colors.white,
                    size: 20.0,
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: screenHeight * 0.15, // Adjusted height

            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: const Color.fromARGB(255, 255, 106, 106),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipOval(
                    child: Image.asset(
                      'assets/default_user_pfp.jpg', // Updated path
                      width: 50, // Adjust image size as needed
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors
                          .transparent, // Transparent to show border effect
                      foregroundColor: Colors.white, // Text color
                      side: const BorderSide(
                        color: Colors.white,
                        width: 2,
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 4.0, horizontal: 8.0), // Adjust padding
                      minimumSize:
                          const Size(70, 30), // Set minimum width and height
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: const Text(
                      'Sign in',
                      style: TextStyle(fontSize: 12), // Adjust font size
                    ),
                  ),
                  //
                  SizedBox(width: 10),
                  //
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, // Background color
                      foregroundColor: const Color.fromARGB(
                          255, 255, 106, 106), // Text color
                      padding: const EdgeInsets.symmetric(
                          vertical: 4.0, horizontal: 8.0), // Adjust padding
                      minimumSize:
                          const Size(70, 30), // Set minimum width and height
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: const Text(
                      'Register',
                      style: TextStyle(fontSize: 12), // Adjust font size
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Remaining Page
          Expanded(
            child: Container(
              color: Colors.white,
              child: Center(
                child: Text(
                  "Rest of the Page",
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
