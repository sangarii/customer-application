import 'package:flutter/material.dart';
import 'package:sample_application/screen/Tap1.dart';
import 'package:sample_application/screen/Tap2.dart';
import 'package:sample_application/screen/Tap3.dart';
import 'package:sample_application/screen/Tap4.dart';
import 'package:sample_application/screen/Tap5.dart';

class navigate extends StatefulWidget {
  const navigate({super.key});

  @override
  State<navigate> createState() => _navigateState();
}

class _navigateState extends State<navigate> {
   int _selectedIndex =0;
  //  List<Color> _itemColors = [
  //   Colors.yellow,    // Color for index 0 (Home)
  //   Colors.green,  // Color for index 1 (Favorites)
  //   Colors.blue,
  //   Colors.orange,  // Color for index 1 (Favorites)
  //   Colors.yellow,   // Color for index 2 (Profile)
  // ];
   List<Widget> _widgetOptions = [
    Tap1(),
    Tap2(),
    Tap3(),
    Tap4(),
    Tap5(),
  ];
   void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:_widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items:const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.purple,
            ),
              BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.purple,
            ),
              BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Shopping',
              backgroundColor: Colors.purple,
            ),
              BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
              BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: 'Menu',
              backgroundColor: Colors.purple,
            ),
        ] ,
       currentIndex: _selectedIndex,
         onTap: _onItemTapped,
         selectedItemColor: Colors.amber[800],
         unselectedItemColor: Colors.black,
         //selectedItemColor: _itemColors[_selectedIndex],
        
       ),
    );
  }
}