import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "Registration",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.notifications),
          onPressed: () {
            // Action for bell icon
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Bell icon clicked')),
            );
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.headphones),
            onPressed: () {
              // Action for headphones icon
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Headphone icon clicked')),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: const Text(
          "Main Content Here",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
