import 'package:flutter/material.dart';

class GridviewPractice extends StatelessWidget {
  const GridviewPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GridView Practice")),

      body: GridView(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey.shade300,
            ),
            child: Column(
              children: [
                Image(image: AssetImage("assets/images/image-1.jpg"),),
                SizedBox(height: 15,),
                Text("Image 01", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),

          Container(
            child: Column(
              children: [
                Image(image: AssetImage("assets/images/image-2.jpg"),),
                SizedBox(height: 15,),
                Text("Image 02", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),

          Container(color: Colors.red),

          Container(color: Colors.blue),

          Container(color: Colors.red),

          Container(color: Colors.blue),

           Container(color: Colors.red),

          Container(color: Colors.blue),

          Container(color: Colors.red),

          Container(color: Colors.blue),
        ],
      ),
    );
  }
}
