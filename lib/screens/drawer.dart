import 'package:flutter/material.dart';

class Drawerpractice extends StatefulWidget {
  const Drawerpractice({super.key});

  @override
  State<Drawerpractice> createState() => _DrawerpracticeState();
}

class _DrawerpracticeState extends State<Drawerpractice> {
  GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();

  int index = 0;
  List<String> items = ["Home", "Category","Settings"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          items[index],
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.indigo,
        leading: IconButton(
          onPressed: () {
            globalKey.currentState?.openDrawer();
          },
          icon: Icon(Icons.menu, color: Colors.white),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        currentIndex: index,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: "Category",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
        ],
      ),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/image-1.jpg"),
                radius: 70,
              ),
              SizedBox(height: 20),
              Text(
                "Abdul Raqeeb",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              Column(
                children: [
                  ListTile(leading: Icon(Icons.home), title: Text("Home")),
                  ListTile(leading: Icon(Icons.info), title: Text("About")),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("Settings"),
                  ),
                  ListTile(leading: Icon(Icons.help), title: Text("Help")),
                  ListTile(leading: Icon(Icons.delete), title: Text("Delete")),
                  ListTile(leading: Icon(Icons.logout), title: Text("Logout")),
                ],
              ),
            ],
          ),
        ),
      ),

      body: Center(
        child: Text(items[index]),
      ),
    );
  }
}
