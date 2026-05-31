import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  String title1 = "Button Screen";
  bool centertitle = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        centerTitle: centertitle,
        title: Text( title1,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),

      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {
            setState(() {
              centertitle = !centertitle;
              title1 = "Button Clicked";
            });
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.indigo,
            foregroundColor: Colors.white,
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.only(top: 18, bottom: 18, left: 30, right: 30),
          ),
          label: Text("Download Now"),
          icon: Icon(Icons.download),
        ),
      ),
    );
  }
}
