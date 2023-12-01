import 'package:flutter/material.dart';

class TextFielLesson extends StatefulWidget {
  const TextFielLesson({super.key});

  @override
  State<TextFielLesson> createState() => _TextFielLessonState();
}

class _TextFielLessonState extends State<TextFielLesson> {
  TextEditingController nameController = TextEditingController();
  int currentIndex = 0;
  List screens = [
    const Text("Home"),
    const Text("Home2"),
    const Text("Home3"),
    const Text("Home4"),
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
                  decoration: BoxDecoration(color: Colors.blue),
                  child: Text("CA201"),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ListTile(
                onTap: () => Navigator.pop(context),
                leading: const Icon(Icons.home),
                title: const Text("Home"),
              ),
              const ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
              ),
              const Spacer(),
              const ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text("Textfield"),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home),),
                Tab(icon: Icon(Icons.settings),),
                  Tab(icon: Icon(Icons.home),),
                  
            ],
          ),
        ),
        body: const TabBarView(
          children: [
          
            Icon(Icons.set_meal),
            Icon(Icons.person),
              Icon(Icons.home),
          ],
        ),
        // body: Center(child: screens[currentIndex]),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            currentIndex = index;
            setState(() {});
          },
          currentIndex: currentIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Settings"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home")
          ],
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          // color: Colors.red
          border: Border.all(color: Colors.black)),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.send),
          SizedBox(
            height: 8,
          ),
          Text("Send")
        ],
      ),
    );
  }
}
