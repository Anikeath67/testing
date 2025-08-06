
import 'package:flutter/material.dart';
import 'package:testing/screen/search.dart';

import 'home.dart';
import 'library.dart';
class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {

  get icon => null;
  final tabs =[Home(),Search(),Library()];
  int currentTabIndex = 0;


  // ui inside Build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

      body: tabs[currentTabIndex],
        backgroundColor: Colors.green ,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentTabIndex,
          onTap: (currentIndex){
            currentTabIndex = currentIndex;
            setState(() {});
          },
          backgroundColor: Colors.black,
          items: [
          BottomNavigationBarItem
            (icon: Icon(Icons.home,color: Colors.white), label: 'Home'),
          BottomNavigationBarItem
            (icon: Icon(Icons.search,color: Colors.white), label: 'search'),
          BottomNavigationBarItem
            (icon: Icon(Icons.library_add,color: Colors.white), label: 'library'),
        ],
        ),

    );

  }
}


