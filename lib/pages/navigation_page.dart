import 'package:flutter/material.dart';
import 'home.dart';
import 'profile.dart';
import 'cart.dart';
import 'hot.dart';

class NavigationPage extends StatefulWidget {

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {

  int currentIndex = 0;

  final tabs = [

    Home(),
    Hot(),
    Cart(),
    Profile(),

  ];


  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: tabs[currentIndex],

      bottomNavigationBar: BottomNavigationBar(

        selectedItemColor: Colors.white,
        unselectedItemColor: Color(0xff898989),
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff242424),

        items: [

          BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: 'browse'.toUpperCase(),
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.local_fire_department_outlined),
              label: 'hot'.toUpperCase(),
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: 'cart'.toUpperCase(),
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined),
              label: 'Profile'.toUpperCase(),
          )

        ],
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
