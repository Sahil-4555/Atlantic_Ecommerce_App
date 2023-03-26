import 'package:atlantic_v2/pages/login_page.dart';
import 'package:atlantic_v2/pages/register_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../services/auth_page.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({Key? key}) : super(key: key);

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  final user = FirebaseAuth.instance.currentUser!;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Signed In As: ${user.email!}'),
          MaterialButton(
            onPressed: () {
              GoogleSignIn().signOut();
              FirebaseAuth.instance.signOut();
              Navigator.pop(context);
            },
            color: Colors.black12,
            child: const Text('Sign Out'),
          )
        ],
      )),
    );
  }
}
