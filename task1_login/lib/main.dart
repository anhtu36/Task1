import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:task1_login/view/screens/authentications/create_account.dart';
import 'package:task1_login/view/screens/splash_screen.dart';
import 'package:task1_login/viewmodels/google_view_model.dart';

void main()async {
    WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home:GoogleViewModel().handleAuthState()
    );
  }
}

