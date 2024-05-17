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

  static Future<void> account(
      String email, dynamic password, AuthMode mode) async {
    try {
      if (mode == AuthMode.login) {
        await auth.signInWithEmailAndPassword(
          email: email,
          password: password,
        );
      } else if (mode == AuthMode.register) {
        await auth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
      }
      }
      catch (e) {
      rethrow;
    }
  }
}