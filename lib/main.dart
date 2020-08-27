import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/search.dart';
import 'screens/yourlibrary.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _selectedIndex = 0;

  List<Widget> _widgetList = <Widget>[
    Home(),
    Search(),
    YourLibrary(),
  ];

  void _onItemTapped (int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: _onItemTapped,
          unselectedItemColor: Colors.grey[500],
          selectedItemColor: Colors.white,
          backgroundColor: Colors.grey[900],
          currentIndex: _selectedIndex,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text("Search"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_books),
              title: Text("Your Library"),
            ),
          ],
        ),
        backgroundColor: Colors.black12,
        appBar: AppBar(
          backgroundColor: Colors.black12,
          title: Text("Good evening"),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings, color: Colors.white,),
              onPressed: () {},
            ),
          ],
        ),
        body: _widgetList.elementAt(_selectedIndex),
      ),
    );
  }
}






