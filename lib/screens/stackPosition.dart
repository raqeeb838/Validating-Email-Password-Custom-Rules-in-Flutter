import 'package:flutter/material.dart';

class StackPositioned extends StatelessWidget {
  const StackPositioned({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Stack Positioned", style: TextStyle(fontWeight: FontWeight.bold),),
      //   backgroundColor: Colors.blueAccent,
      // ),

    body: Stack(
      children: [

            Positioned(
                    top: -500,
                    right: -500,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.red.withAlpha(90),
              shape: BoxShape.circle
            ),
            width: 200,
            height: 200,
            // 
          ),
        ),
       

         Positioned(
                    top: -50,
                    right: -50,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle
            ),
            width: 200,
            height: 200,
            // 
          ),
        ),

        // Container(
        //   width: 150,
        //   height: 150,
        //   color: Colors.blue,
        // ),
     
      ],
    ),
    );
  }
}