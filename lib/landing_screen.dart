import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:productivity_app/sign_up.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black26,
      body: Column(
        children: [
          const Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Welcome to \n Productivity",
                style: TextStyle(
                  color: Colors.white60,
                  fontWeight: FontWeight.w600,
                  fontSize: 21
                ),
              ),
            ),
          ),
          Center(
            child: Image.asset(
                'assets/images/productive.png',
              width: 100,
              height: 100,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Text(
                    "The best solution for task management",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white60
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "Create notes , manage projects , accomplish tasks",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                    color: Colors.white60
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 32,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.redAccent,
            ),
              onPressed: () {
              Get.to(const SignUp());
              },
              child: const Text(
                  "Create Account",
                style: TextStyle(
                  color: Colors.white60,
                  fontSize: 14
                ),
              )
          ),
          const SizedBox(height: 12,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black12,
            ),
              onPressed: () {},
              child: const Text(
                  "Log In",
                style: TextStyle(
                  color: Colors.white60,
                  fontSize: 14
                ),
              )
          ),
        ],
      ),
    );
  }
}
