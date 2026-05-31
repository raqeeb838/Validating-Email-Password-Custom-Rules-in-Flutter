import 'package:flutter/material.dart';

class rowColumn extends StatelessWidget {
  const rowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Row and Column",style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          spacing: 20,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            ),

             Container(
              height: 100,
              width: 100,
              color: Colors.amber,
            ),

             Container(
              height: 100,
              width: 100,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}