import 'package:flutter/material.dart';

class BottomNav2 extends StatefulWidget {
  const BottomNav2({super.key});

  @override
  State<BottomNav2> createState() => _BottomNav2State();
}

class _BottomNav2State extends State<BottomNav2> {
  int index = 0;
  List<String> items = ["Home", "About", "Search", "Settings"];
  GlobalKey<ScaffoldState> globalkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalkey,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.indigo,
        title: Text(
          items[index],
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          onPressed: () {
            globalkey.currentState?.openDrawer();
          },
          icon: Icon(Icons.menu, color: Colors.white),
        ),
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
                  ListTile(leading: Icon(Icons.settings), title: Text("Settings"),),
                  ListTile(leading: Icon(Icons.help), title: Text("Help")),
                  ListTile(leading: Icon(Icons.delete), title: Text("Delete")),
                  ListTile(leading: Icon(Icons.logout), title: Text("Logout")),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        currentIndex: index,
        backgroundColor: Colors.indigo,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        type: BottomNavigationBarType.fixed,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "About"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
        ],
      ),
      body: Center(child: Text(items[index])),
    );
  }
}
