import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Container Screen",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.cyan,
      ),

      body: Container(
        margin: EdgeInsets.only(left: 20, top: 20),
        height: 150,
        width: 150,
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(10),
          border: BoxBorder.all(width: 3),
          boxShadow: [
            BoxShadow(
              color: Colors.cyanAccent,
              blurRadius: 12,
              spreadRadius: 1,
              blurStyle: BlurStyle.inner,
              offset: Offset(-8, -8),
            ),
            BoxShadow(
              color: Colors.cyan.shade700.withAlpha(128),
              blurRadius: 12,
              spreadRadius: 1,
              blurStyle: BlurStyle.inner,
              offset: Offset(-8, -8),
            ),
          ],
          gradient: LinearGradient(
            colors: [Colors.cyan, Colors.blueAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Row 1", style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(width: 10),
                Text("Row 2", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 10),
            Column(
              children: [
                Text("Column 1", style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 5),
                Text("Column 1", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
