import 'package:flutter/material.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({super.key});

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
   List<Map<String, String>> users = [
  {"title": "raqeeb", "subtitle": "hello1"},
  {"title": "aqib", "subtitle": "hello2"},
  {"title": "atique", "subtitle": "hello3"},
  {"title": "haseeb", "subtitle": "hello4"},
  {"title": "Razzaq", "subtitle": "hello5"},
];

  // List<String> titleNames = ["raqeeb", "aqib", "atique", "haseeb", "Razzaq"];
  // List<String> subtitles = ["hello1", "hello2","hello3","hello4","hello5" ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List View Screen")),
      body: Container(
        

        // height: 150,
        child: ListView(
          // scrollDirection: Axis.horizontal,
          children: [
                // for(int i in numbers)
                //     Container(
                //     height: 150, 
                //     width: 190,
                //     color: Colors.blueAccent,
                //     margin: EdgeInsets.all(12),
                //     child: Center(child: Text(i.toString(), style: TextStyle(color: Colors.white),)),
                //   )

              //  method 1
                // for(String title in titleNames)
                //   Card(
                //   child: ListTile(
                //     title: Text(title),
                //     subtitle: Text("Hello Raqeeb Bai"),
                //     leading: Icon(Icons.person),
                //     onTap: (){
                //       print("Kese ho Raqeeb");
                //     },
                //     trailing: Icon(Icons.add),
                //   ),
                // )

                // for(int i =0; i<titleNames.length; i++)
                //   Card(
                //     child: ListTile(
                //       title: Text(titleNames[i]),
                //       subtitle: Text(subtitles[i]),
                //       leading: Icon(Icons.person),
                //       trailing: Icon(Icons.add),
                //       onTap: (){
                //         print("Name is:${titleNames[i]} - Subtitle is: ${subtitles[i]}");
                //       },
                //     ),
                //   )

                for(var user in users)
                Card(
                    child: ListTile(
                      title: Text(user["title"]!),
                      subtitle: Text(user["subtitle"]!),
                      leading: Icon(Icons.person),
                      trailing: Icon(Icons.add),
                      onTap: (){
                        print("Name is:${user["title"]} - Subtitle is: ${user["subtitle"]}");
                      },
                    ),
                  )
              ],
        ),
      ),
    );
  }
}