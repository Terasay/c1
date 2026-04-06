import 'package:flutter/material.dart';
import 'loginpage.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/images/image_1.jpg', fit: BoxFit.cover),
          ),

          Center(
            child: Image.asset('assets/images/logo.png', height: 180, width: 180),
          ),

          Positioned(
            bottom: 30,
            right: 20,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                padding: EdgeInsets.all(25),
                shape: const CircleBorder(),
              ),
              onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: const Text('skip', style: TextStyle(color: Colors.brown, fontSize: 20, fontWeight: FontWeight.bold)),
            ),
          ),
        ],
      ),
    );
  }
}