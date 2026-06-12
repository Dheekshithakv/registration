import 'package:flutter/material.dart';
import 'sign_up.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Future.delayed(
              const Duration(seconds: 4),
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Signupscreen()),
                );
              },
            );
          },style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,side: BorderSide(color: Colors.black)),
          child: const Text('Sign Up'),
        ),
      ),
    );
  }
}
