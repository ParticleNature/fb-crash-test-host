import "package:crash_app/crash.dart";
import "package:firebase_core/firebase_core.dart";
import "package:flutter/foundation.dart";
import "package:flutter/material.dart";

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyApt89OBN7K3GXArQhfLqeOHmJafkA-DJg",
          authDomain: "sample-app-26fbb.firebaseapp.com",
          projectId: "sample-app-26fbb",
          storageBucket: "sample-app-26fbb.firebasestorage.app",
          messagingSenderId: "897104606625",
          appId: "1:897104606625:web:c13fe010aa160dca7847e0",
          measurementId: "G-0YZLB0XL2P"),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My App",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: BuggyHomePage(),
    );
  }
}
