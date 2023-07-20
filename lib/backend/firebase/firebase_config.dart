import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCTIivrCjkq9sUnVkkTHb7h1SsRiCp939Y",
            authDomain: "smfa-project.firebaseapp.com",
            projectId: "smfa-project",
            storageBucket: "smfa-project.appspot.com",
            messagingSenderId: "149962880294",
            appId: "1:149962880294:web:8dc09faaa048c11849fde7"));
  } else {
    await Firebase.initializeApp();
  }
}
