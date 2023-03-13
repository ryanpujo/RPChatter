import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthenticator {
  final FirebaseAuth _auth;

  FirebaseAuthenticator(this._auth);

  Future<bool> isAuthenticated() async {
    final user = _auth.currentUser;
    return user != null && user.emailVerified ? true : false;
  }
}
