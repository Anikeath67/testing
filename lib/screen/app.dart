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
  final tabs = [Home(), Search(), Library()];
  int currentTabIndex = 0;

   Widget miniPlayer() {
    Size deviceSize = MediaQuery.of(context).size;
    return AnimatedContainer(duration: const Duration(microseconds: 500),
    color: Colors.blueGrey,
    width: deviceSize.width,
height: 50,
child: Row(
  
   mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [ 
  Image.network('https://i.scdn.co/image/ab67616d0000b273aad3f4b601ae8763b3fc4e88', fit: BoxFit.cover),
  Text('Toofan',
  style: TextStyle(color: Colors.white),
  ),
  IconButton(onPressed: (){}, icon: Icon(Icons.play_arrow,color: Colors.white,))
],),
    );
  }

  // ui inside Build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentTabIndex],
      backgroundColor: const Color.fromARGB(255, 213, 218, 213),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
           miniPlayer(),
          BottomNavigationBar(
          currentIndex: currentTabIndex,
          onTap: (currentIndex) {
            currentTabIndex = currentIndex;
            setState(() {});
          },
          backgroundColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.white),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.white),
              label: 'search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_add, color: Colors.white),
              label: 'library'),
          ],
      )],
        ),
      );
    
  }
}
