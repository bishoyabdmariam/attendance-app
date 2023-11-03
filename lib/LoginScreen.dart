import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  double screenWidth = 0;

  double screenHeight = 0;

  Color primary = const Color(0xffeef444c);

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: screenWidth,
            height: screenHeight / 2.5,
            decoration: BoxDecoration(
              color: primary,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(70),
              ),
            ),
            child: Center(
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: screenWidth / 5,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: screenHeight / 15,
              bottom: screenHeight / 10,
            ),
            child: Text(
              "Login",
              style: TextStyle(fontSize: screenWidth / 18),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: screenWidth / 12,
            ),
            alignment: Alignment.centerLeft,
            child: Text(
              "Employee ID",
              style: TextStyle(fontSize: screenWidth / 26),
            ),
          ),
          Container(
            width: screenWidth,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              children: [
                Container(
                  width: screenWidth / 15,
                  child: Icon(
                    Icons.person,
                  ),
                ),
                Expanded(child: TextFormField)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
