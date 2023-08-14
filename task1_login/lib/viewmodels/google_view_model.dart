import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:task1_login/view/screens/authentications/create_account.dart';
import 'package:task1_login/view/screens/choose_login.dart';
import 'package:task1_login/view/screens/profile_screen.dart';
import 'package:task1_login/view/screens/splash_screen.dart';

class GoogleViewModel {
  handleAuthState() {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return const ProfileScreen();
        } else {
          return const SplashScreen();
        }
      },
    );
  }

  Future<UserCredential> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication googleAuth =
        await googleUser!.authentication;
    final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  Future signOut() async {
    await FirebaseAuth.instance.signOut();
    await GoogleSignIn().signOut();
  }
}
