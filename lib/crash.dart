import 'package:flutter/material.dart';
import "package:crash_app/buggy_page.dart";

class BuggyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Crashy App")),
      body: BuggyWidget(),
    );
  }
}

class BuggyWidget extends StatefulWidget {
  @override
  _BuggyWidgetState createState() => _BuggyWidgetState();
}

class _BuggyWidgetState extends State<BuggyWidget> {
  // Intentionally introducing a null variable
  String? nullableString;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            // Trigger a crash by accessing a null variable
            print(nullableString!.length); // This will crash
          },
          child: Text("Cause Null Crash"),
        ),
        ElevatedButton(
          onPressed: () {
            // Trigger a type mismatch crash
            dynamic nonString = 12345;
            print(nonString as String); // This will crash
          },
          child: Text("Cause Type Mismatch Crash"),
        ),
        GestureDetector(
          onHorizontalDragEnd: (details) {
            // Trigger a crash with division by zero
            int value = 10 ~/ 0; // This will crash
            print(value);
          },
          child: Container(
            color: Colors.red,
            height: 100,
            width: double.infinity,
            child: Center(child: Text("Drag Horizontally to Crash")),
          ),
        ),
        Builder(
          builder: (context) {
            // Trigger a crash due to an improper widget tree
            return ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => BuggyPage(),
                ));
              },
              child: Text("Go to Buggy Page"),
            );
          },
        ),
      ],
    );
  }
}
