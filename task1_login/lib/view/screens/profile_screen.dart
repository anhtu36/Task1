import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:task1_login/view/screens/authentications/create_account.dart';
import 'package:task1_login/viewmodels/google_view_model.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      FirebaseAuth.instance.currentUser?.photoURL ?? ""),
                  radius: 40,
                ),
                Text(FirebaseAuth.instance.currentUser?.displayName ?? ""),
                const SizedBox(
                  height: 10,
                ),
                Text(FirebaseAuth.instance.currentUser?.email ?? ""),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    GoogleViewModel().signOut().then((_) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CreateAccountScreen(),
                          ));
                    });
                  },
                  child: const Text('LogOut'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
