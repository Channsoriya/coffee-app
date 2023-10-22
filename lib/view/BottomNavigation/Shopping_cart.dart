import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Shopping_cart extends StatefulWidget {
  const Shopping_cart({super.key});

  @override
  State<Shopping_cart> createState() => _Shopping_cartState();
}

class _Shopping_cartState extends State<Shopping_cart> {
  @override
  Widget build(BuildContext context) {
     double Height=MediaQuery.of(context).size.height;
    double Weight=MediaQuery.of(context).size.width;
    return Scaffold(
      body:  SafeArea(
        child: Column(
                     children: List.generate(2, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                          top: 8,
                          bottom: 8,
                          right: 3,
                          left: 3
                        ),
                        child: Container(
                          width: double.infinity,
                          height: Height*0.14,
                          decoration: BoxDecoration(
                           color: Colors.white,
                                     boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(0.5),
                                              spreadRadius: 3,
                                              blurRadius: 10,
                                              offset: const Offset(0,3)
                                            )
                           ],
                          ),
                          child: InkWell(
                            onTap: () {
                              // Get.off(const MenuCoffeeApp());
                            },
                            child: Row(
                              children: [
                                Container(
                                  height: Height*0.14,
                                  width: Weight*0.23,
                                  decoration:const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/images/coffee/coffee4-removebg-preview.png'),
                                      fit: BoxFit.cover
                                    )
                                  ),
                                ),
                               Container(
                                width: Height*0.3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:const [
                                    Text(
                                      'cold coffee'
                                    ),
                                    Text(
                                      'discition'
                                    )
                                  ],
                                ),
                               ),
                              Text(
                                '99'
                              )
                              ],
                            ),
                          ),
                        ),
                      );
                     }),
                  ),
      ),
    );
  }
}