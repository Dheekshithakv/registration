import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:registration/login.dart';
import 'package:registration/sign_up.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              Text(
                "Welcome",
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              Lottie.asset(
                "assets/login.json",
                height: 250,
                width: 250,
              ),
               SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  side: BorderSide(color: Colors.black),
                  minimumSize: Size(300, 60),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Signupscreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  side: BorderSide(color: Colors.black),
                  minimumSize: Size(300, 60),
                ),
                child: Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 18, color: Colors.white,fontWeight: FontWeight.bold),
                ),
              ),
            ],
            ),
          ),
        ),
      ),
    );
  }
}
