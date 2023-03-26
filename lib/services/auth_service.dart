import 'package:atlantic_v2/pages/user_details.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/RegisterModel.dart';

import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;

import '../models/RegisterModel.dart';

class AuthService {
  //Google SignIn.
  signInWithGoogle() async {
    //begin interactive sign in process
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

    //obtain auth details from request
    final GoogleSignInAuthentication gAuth = await gUser!.authentication;

    // create a new credential for user
    final credential = GoogleAuthProvider.credential(
      accessToken: gAuth.accessToken,
      idToken: gAuth.idToken,
    );
    // print("1");
    // get user data from Google account
    // final user = FirebaseAuth.instance.currentUser!;
    // final uid = user.uid;
    // final email = user.email!;
    // final firstName = user.displayName!.split(" ")[0];
    // final lastName = user.displayName!.split(" ")[1];

    // print('gUser: $gUser');
    // print("2");
    // print('gAuth: $gAuth');

    // call API to add user data to database
    const url = "http://192.168.7.151:6000/user";


    // sign in with Firebase auth credential
    final User userDetails =  (await FirebaseAuth.instance.signInWithCredential(credential)).user!;

    final response = await http.post(Uri.parse(url),
        headers: {"Content-Type": "application/json"},
        body: json.encode({
          "uid": userDetails.uid,
          "email": userDetails.email,
          "photourl": userDetails.photoURL,
          "name": userDetails.displayName,
        }));

    // parse the response from the API
    // print("3");
    final data = json.decode(response.body);
    final registerModel = RegisterModel.fromJson(data);

    if (registerModel.status == 201) {
      print("User data added to database successfully!");
    } else {
      print("Error adding user data to database: ${registerModel.message}");
    }
  }
}



// class AuthService {
//   //Google SignIn.
//   signInWithGoogle() async {
//     //begin interactive sign in process
//     final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();
//
//     //obtain auth details from request
//     final GoogleSignInAuthentication gAuth = await gUser!.authentication;
//
//     // create a new credential for user
//     final credential = GoogleAuthProvider.credential(
//       accessToken: gAuth.accessToken,
//       idToken: gAuth.idToken,
//     );
//
//     print("dhadjlakjks");
//     RegisterModel data = await SingIN().createAlbum("Sahil");
//
//     if (data.status == 201) {
//       print("Registered successfully !!!");
//     }
//
//     return await FirebaseAuth.instance.signInWithCredential(credential);
//
//
//
//   }

//   Future<String> createUser(
//       String? email, String? firstname, String? lastname, String? uid) async {
//     const url = "http://localhost:6000/user";
//     final headers = {'Content-Type': 'application/json'};
//     final body = jsonEncode({
//       'uid': FirebaseAuth.instance.currentUser?.uid.toString(),
//       'email': FirebaseAuth.instance.currentUser?.email.toString(),
//       'firstname': FirebaseAuth.instance.currentUser?.getIdToken().toString(),
//       'lastname': FirebaseAuth.instance.currentUser?.displayName.toString(),
//     });
//     final response = await http.post(Uri.parse(url),headers: headers,body: body);
//     final data = jsonDecode(response.body);
//
//     if(response.statusCode == 200)
//     {
//       print("ADDED SUCCESS");
//       return data['data'];
//     }
//     else
//     {
//       print((Exception(data['message'])));
//       throw Exception(data['message']);
//     }
//   }

