import 'package:app_coffee/view/BottomNavigation/HomeScreen.dart';
import 'package:app_coffee/view/BottomNavigation/Profile_Page.dart';
import 'package:app_coffee/view/BottomNavigation/Shopping_cart.dart';
import 'package:app_coffee/view/BottomNavigation/like_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class CoffeShop extends StatefulWidget {
  const CoffeShop({super.key});

  @override
  State<CoffeShop> createState() => _CoffeShopState();
}

class _CoffeShopState extends State<CoffeShop> {
 var setselectIndex=0;
  List<Widget> listapp=const[
  HomeScreen(),
  Shopping_cart(),
  LikePage(),
  Profile_Page()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listapp[setselectIndex],
       bottomNavigationBar: SalomonBottomBar(
        onTap: (value) {
          setState(() {
            setselectIndex=value;
          });
        },
        currentIndex: setselectIndex,
          items: [
             //home page
             SalomonBottomBarItem(
              icon:const Icon(Icons.home,size: 30,),
              title:const Text('Home'),
              selectedColor: Colors.pink,
            ),
             SalomonBottomBarItem(
              icon:const Icon(Icons.shopping_cart,size: 30),
              title:const Text("Cart"),
              selectedColor: Colors.pink,
            ),
             /// Likes
            SalomonBottomBarItem(
              icon:const Icon(Icons.favorite_border,size: 30),
              title:const Text("Likes"),
              selectedColor: Colors.pink,
            ),
             /// Profile
            SalomonBottomBarItem(
              icon:const Icon(Icons.person,size: 30),
              title:const Text("Profile"),
              selectedColor: Colors.teal,
            ),
        ]),
    );
  }
}