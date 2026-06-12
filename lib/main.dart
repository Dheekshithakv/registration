import 'package:flutter/material.dart';
import 'package:registration/button.dart';
import 'package:registration/sign_up.dart';
import 'package:registration/welcome.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main()async {await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Welcome(),
  ));
}

