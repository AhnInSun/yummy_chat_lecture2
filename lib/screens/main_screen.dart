import 'package:flutter/material.dart';
import 'package:yummy_chat_lecture2/config/palette.dart';

class LoginSignupScreen extends StatefulWidget {
  const LoginSignupScreen({Key? key}) : super(key: key);

  @override
  State<LoginSignupScreen> createState() => _LoginSignupScreenState();
}

class _LoginSignupScreenState extends State<LoginSignupScreen> {
  bool isSignupScreen = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: Stack(
        children: [
          Positioned(
              top:0,
              right: 0,
              left: 0,
              child: Container(
                height: 300,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('image/red.jpg'),
                    fit: BoxFit.fill
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.only(top: 90, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          text: const TextSpan(
                            text: 'Welcome',
                            style: TextStyle(
                              letterSpacing: 1.0,
                              fontSize: 25,
                              color: Colors.white
                            ),
                            children: [
                              TextSpan(
                                text: ' to Yummy chat!',
                                style: TextStyle(
                                    letterSpacing: 1.0,
                                    fontSize: 25,
                                    color: Colors.white,
                                  fontWeight: FontWeight.bold
                                ),
                              )
                            ]
                          )
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      const Text(
                        'Signup to continue',
                        style: TextStyle(
                          letterSpacing: 1.0,
                          color: Colors.white
                        ),
                      )
                    ],
                  ),
                ),
              )
          ),
        ],
      ),
    );
  }
}