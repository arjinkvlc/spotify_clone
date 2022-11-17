import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Text("İyi günler"),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.notifications_none),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.update),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.settings),
            )
          ],
        ),
        body: Center(
            child: Container(
              height: 695,
              width: 500,
              color: Colors.black87,
            )),
        bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.white30,
            selectedItemColor: Colors.white,
            backgroundColor: Colors.black87.withOpacity(0.8),
            showUnselectedLabels: true,
            showSelectedLabels: true,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  label: "Anasayfa",
                  activeIcon: Icon(Icons.home)),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: "Arama",
                  activeIcon: Icon(Icons.home)),
              BottomNavigationBarItem(
                  icon: Icon(Icons.bookmarks_sharp),
                  label: "Profil",
                  activeIcon: Icon(Icons.home))
            ]),
        );
  }
}
