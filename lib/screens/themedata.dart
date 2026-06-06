import 'package:flutter/material.dart';

class ThemeDataPractice extends StatelessWidget {
  const ThemeDataPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Theme Data Practice",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
