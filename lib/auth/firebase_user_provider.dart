import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class SampleAppCoffeeNotesFirebaseUser {
  SampleAppCoffeeNotesFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

SampleAppCoffeeNotesFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<SampleAppCoffeeNotesFirebaseUser>
    sampleAppCoffeeNotesFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<SampleAppCoffeeNotesFirebaseUser>(
            (user) => currentUser = SampleAppCoffeeNotesFirebaseUser(user));
