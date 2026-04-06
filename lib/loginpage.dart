import 'package:flutter/material.dart';
import 'welcomepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              width: 300,
              height: 320,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.7),
                borderRadius: BorderRadius.circular(5),
              ),

              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Join us\nright now', style: TextStyle(color: Colors.white, fontSize: 34, fontWeight: FontWeight.w400),),

                  const SizedBox(height: 30),

                  SizedBox(
                    width: 250,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.amber, shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(10)),),
                      onPressed: () {
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => WelcomePage())
                        );
                      },
                      child: const Text('Login', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: Colors.white),),
                    ),
                  ),

                  const SizedBox(height: 15),

                  Row(
                    children: [
                      Expanded(child: Divider(color: Colors.white)),
                      const Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text("OR", style: TextStyle(color: Colors.white))),
                      Expanded(child: Divider(color: Colors.white)),
                    ],
                  ),

                  const SizedBox(height: 15),

                  SizedBox(
                    width: 250,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(10)),),
                      onPressed: () {
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => WelcomePage()),
                        );
                      },
                      child: const Text('Login', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: Colors.orange),),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}