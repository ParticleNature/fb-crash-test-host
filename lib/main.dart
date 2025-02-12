import "package:crash_app/crash.dart";
import "package:flutter/material.dart";

void main(List<String> args) {
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
