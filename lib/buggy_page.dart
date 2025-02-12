import "package:flutter/material.dart";

class BuggyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Introducing a widget that will fail during rendering
    return Scaffold(
      appBar: AppBar(title: Text("Buggy Page")),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: ListView.builder(
            itemCount: null, // Providing null will crash ListView.builder
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("Item $index"),
              );
            },
          ),
        ),
      ),
    );
  }
}
