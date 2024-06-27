import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAYYAkjSe5PHTAeDarvtSFmYRGWjDEfnhw",
            authDomain: "apii-pkb3sf.firebaseapp.com",
            projectId: "apii-pkb3sf",
            storageBucket: "apii-pkb3sf.appspot.com",
            messagingSenderId: "221838280812",
            appId: "1:221838280812:web:870327b1f1615718ed3049"));
  } else {
    await Firebase.initializeApp();
  }
}
