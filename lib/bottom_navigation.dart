


import 'package:flutter/material.dart';

import 'main_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int index = 0;
  final screens = const [
    MainScreen(),
    Center(child: Text('Transaction', style: TextStyle(fontSize: 100),),),
    Center(child: Text('Accounts', style: TextStyle(fontSize: 100),),),
    Center(child: Text('Cards', style: TextStyle(fontSize: 100),),),
    Center(child: Text('Profile', style: TextStyle(fontSize: 100),),),
  ];
  @override
  Widget build(BuildContext context) {
     final double height = MediaQuery.of(context).size.height;
     final double width = MediaQuery.of(context).size.width;
    return Scaffold(

      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(fontSize: width * 0.03,
            fontWeight: FontWeight.w500,
            color: const Color(0xff9EA3AE),
            ),
          ),
          iconTheme: MaterialStateProperty.all(const IconThemeData(color: Color(0xff9EA3AE)))
        ),
        child: NavigationBar(
          height: height * 0.1,
          backgroundColor: Colors.white,

          selectedIndex: index,
          onDestinationSelected: (index) => setState(() {
            this.index = index;
          }),
          destinations: const [
            NavigationDestination(
                icon: Icon(Icons.home),
                label: 'Home',),
            NavigationDestination(
              icon: Icon(Icons.event_note_rounded),
              label: 'Transaction',),
            NavigationDestination(
              icon: Icon(Icons.event_note_rounded,
              ),
              label: 'Accounts',),
            NavigationDestination(
              icon: Icon(Icons.credit_card_rounded),
              label: 'Cards',),
            NavigationDestination(
              icon: Icon(Icons.person),
              label: 'Profile',),
          ],
        ),
      ),
    );
  }
}
