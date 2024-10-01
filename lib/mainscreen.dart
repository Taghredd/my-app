import 'package:flutter/material.dart';
import 'package:new_application/cart.dart';
import 'package:new_application/hotoffer.dart';
import 'package:new_application/login.dart';
import 'package:new_application/main1.dart';
import 'package:new_application/used.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int curent = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> screen = [
      Main1(),
      Usedscreen(),
      HotOffer(),
      Cartscreen(),
      Login()
    ];
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: curent,
        showSelectedLabels: false,
        type: BottomNavigationBarType.shifting,
        fixedColor: Colors.black,
        unselectedItemColor: Colors.blue,
        //selectedItemColor: Colors.black,
        backgroundColor: const Color.fromARGB(31, 114, 40, 40),
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              label: "catogares"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.abc,
                color: Colors.black,
              ),
              label: "office"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.card_travel,
                color: Colors.black,
              ),
              label: "cart"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              label: "profil")
        ],
        onTap: (value) {
          setState(() {
            curent = value;
          });
        },
      ),
      body: screen[curent],
    );
  }
}
