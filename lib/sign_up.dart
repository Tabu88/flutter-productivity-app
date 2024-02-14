import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dashboard.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
              Icons.chevron_left,
            color: Colors.white60,
          ),
          onPressed: (){
            Get.back();
          },
        ),
      ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             SizedBox(height: 20,),
             Text(
                "Create Account",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35
                ),
              ),

            SizedBox(height: 25,),
            TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  prefix: Icon(Icons.person_2_outlined),
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  hintText: "Enter your name"
                ),

              ),
            SizedBox(height: 8,),
            TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    prefix: Icon(Icons.mail),
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    hintText: "Enter your email"
                ),
              ),
            SizedBox(height: 8,),
            TextFormField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                    prefix: Icon(Icons.lock),
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    hintText: "Enter your password"
                ),
              ),
            SizedBox(height: 10,),
            Text(
                "By signing in you agree to the Terms &\n Conditions and Privacy Policy",
              style: TextStyle(
                fontSize: 10,
                color: Colors.white60
              ),
              ),
            SizedBox(height: 10,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent
              ),
                onPressed: () {
                Get.to((const Dashboard()));
                },
                child: Text(
                  "Continue",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white60
                  ),
                )
            )


          ],
        ),
      ),
    );
  }
}
