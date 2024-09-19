import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCo_1dMl4QG6l2I0XqkiqteUHhRO15piGU",
            authDomain: "todo4-you.firebaseapp.com",
            projectId: "todo4-you",
            storageBucket: "todo4-you.appspot.com",
            messagingSenderId: "165815115439",
            appId: "1:165815115439:web:e736e58683d945d245fe5a"));
  } else {
    await Firebase.initializeApp();
  }
}
