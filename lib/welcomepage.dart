import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          Positioned.fill(
            child: Image.asset('assets/images/image_1.jpg', fit: BoxFit.cover),
          ),

          Align(
            alignment: const  Alignment(0, -0.75),
            child: SizedBox(
              width: 140,
              height: 140,
              child: Image.asset('assets/images/logo.png'),
            ),
          ),


           Center(
            child: Container(
              width: 380,
              height: 285,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.7),
                borderRadius: BorderRadius.circular(5),
              ),

              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: 350,
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(filled: true, fillColor: Colors.white, prefixIcon: Padding(padding: const EdgeInsets.all(10), child: Image.asset('assets/icons/icon_1.png'),), hintText: 'Please enter your account'),
                    ),
                  ),

                  const SizedBox(height: 15),

                  SizedBox(
                    width: 350,
                    height: 50,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(filled: true, fillColor: Colors.white, prefixIcon: Padding(padding: const EdgeInsets.all(10), child: Image.asset('assets/icons/icon_1.png'),),hintText: 'Please enter your password'),
                    ),
                  ),

                  GestureDetector(
                    onTap: 
                    setState(() {
                      
                    });,
                  )
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}