import 'package:firebase_auth/firebase_auth.dart';

enum AuthMode { login, register }

FirebaseAuth auth = FirebaseAuth.instance;

class Auth {

  static Future<void> signOut() async {
    try {
      await auth.signOut();
    } catch (e) {
      rethrow;
    }
  }

  static Future<UserCredential> account(
      String email, dynamic password, AuthMode mode) async {
    var userCredential;
    try {
      if (mode == AuthMode.login) {
        userCredential = await auth.signInWithEmailAndPassword(
          email: email,
          password: password,
        );
      } else if (mode == AuthMode.register) {
        userCredential = await auth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
      }
      return userCredential;
    } catch (e) {
      rethrow;
    }
  }
}