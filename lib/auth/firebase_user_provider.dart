import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class SniffAppFirebaseUser {
  SniffAppFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

SniffAppFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<SniffAppFirebaseUser> sniffAppFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<SniffAppFirebaseUser>(
            (user) => currentUser = SniffAppFirebaseUser(user));
