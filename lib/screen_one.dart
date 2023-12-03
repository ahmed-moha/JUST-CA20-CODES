import 'package:ca_208/class_example.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  int currentIndex = 0;
  List<Widget> screens = [
    const Center(child: Text("HOME")),
   const MYClass(),
    const Center(child: Text("PROFILE"))
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              const SizedBox(
                width: double.infinity,
                child: DrawerHeader(
                  decoration: BoxDecoration(color: Colors.cyan),
                  child: Text("Hello"),
                ),
              ),
              ListTile(
                onTap: () => Navigator.pop(context),
                leading: const Icon(Icons.home),
                title: const Text("Home"),
              ),
              ListTile(
                onTap: () => Navigator.pop(context),
                leading: const Icon(Icons.settings),
                title: const Text("Settings"),
              )
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text("Screen One"),

          bottom: const TabBar(tabs: [
            Tab(icon: Icon(Icons.home),),
             Tab(icon: Icon(Icons.call),),
              Tab(icon: Icon(Icons.message),)
          ]),
        ),
        body: const TabBarView(
          children: [
            Text("Home"),
            Text("Call"),
            Text("Message")
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            currentIndex = index;
            setState(() {});
          },
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.class_), label: "Class"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
      ),
    );
  }
}
