// ignore_for_file: non_constant_identifier_names

import 'package:app_coffee/view/BottomNavigation/ShoppingCart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ViewMore extends StatefulWidget {
  const ViewMore({super.key});

  @override
  State<ViewMore> createState() => _ViewMoreState();
}

class _ViewMoreState extends State<ViewMore> {
  @override
  Widget build(BuildContext context) {
     double Height=MediaQuery.of(context).size.height;
     double Weight=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(

      ),
       body:  SafeArea(
        child: shoppinCart(Height, Weight)
       )     
    );
  }
}