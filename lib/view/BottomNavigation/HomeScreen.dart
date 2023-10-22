
import 'package:app_coffee/view/sign%20in%20or%20sign%20up/sign_in.dart';
import 'package:app_coffee/view/home%20page/view_more.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'ShoppingCart.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
List<String> menuapp=[
  'All',
  'Hot coffee',
  'Cold coffee',
  'Cappucino coffee'
];
int isindex=0;
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double Height=MediaQuery.of(context).size.height;
    double Weight=MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                  Container(
                    height: Height*0.20,
                    child: Stack(
                      children: [
                        Container(
                          height: Height*0.16,
                          decoration:const BoxDecoration(
                            color: Color.fromARGB(255, 175, 85, 6),
                          borderRadius: BorderRadius.only(
                            bottomLeft:  Radius.circular(50)
                          )
                          ),
                        ),
                        Positioned(
                          top: Height*0.12,
                          right: Weight*0.05,
                          left: Weight*0.05,
                          child: TextFormField(
                            decoration:const InputDecoration(
                              hintText: 'Search',
                              prefixIcon: Icon(
                                Icons.search
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30)
                                )
                              ),
                              filled: true,
                              fillColor: Colors.white
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: Height*0.02,
                      right: Weight*0.05,
                      left:  Weight*0.05
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: EdgeInsets.only(
                          bottom: Height*0.01
                        ),
                        child: Row(
                children: List.generate(menuapp.length, (index) {
                  var data=menuapp[index];
                   return Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: InkWell(
                      onTap: () {
                        setState(() {
                          isindex=index;
                        });
                      },
                       child: isindex==index?Container(
                       decoration:const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20)
                        ),
                        color: Colors.grey
                       ),
                         child: Padding(
                           padding: EdgeInsets.only(
                            right: Weight*0.05,
                            left:  Weight*0.05,
                            top:  Height*0.006,
                            bottom: Height*0.006
                           ),
                           child: Text(
                            data,
                            style: GoogleFonts.acme(
                            fontSize: 20
                          ),
                            ),
                         ),
                       ):Text(
                        data,
                       style: GoogleFonts.acme(
                            fontSize: 20
                          ),
                       ),
                     ),
                   );
                })
                    ),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                   scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.all(.0),
                      child: Row(
                        children:[ 
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              child: Container(
                                 width: Weight*0.455,
                                 height: Height*0.2,
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
                                 child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: Height*0.15,
                                      decoration: const BoxDecoration( 
                                        image: DecorationImage(
                                          image: AssetImage('assets/images/coffee/cafè_Au_lait-removebg-preview.png'),
                                        )
                                      ),
                                    ),
                                  const  Text(
                                      'cold coffee'
                                    )
                                  ],
                                 ),
                              ),
                             onTap: () {
                             Get.to(const Sign_in());
                             },
                            ),   
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              child: Container(
                                 width: Weight*0.455,
                                 height: Height*0.2,
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
                                 child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: Height*0.15,
                                      decoration: const BoxDecoration( 
                                        image: DecorationImage(
                                          image: AssetImage('assets/images/coffee/cafè2-removebg-preview.png'),
                                        )
                                      ),
                                    ),
                                  const  Text(
                                      'cold coffee'
                                    )
                                  ],
                                 ),
                              ),
                             onTap: () {
                             Get.to(const Sign_in());
                             },
                            ),   
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              child: Container(
                                 width: Weight*0.455,
                                 height: Height*0.2,
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
                                 child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: Height*0.15,
                                      decoration:const BoxDecoration( 
                                        image: DecorationImage(
                                          image: AssetImage('assets/images/coffee/cafè3-removebg-preview.png'),
                                        )
                                      ),
                                    ),
                                  const  Text(
                                      'cold coffee'
                                    )
                                  ],
                                 ),
                              ),
                             onTap: () {
                             Get.to( const Sign_in());
                             },
                            ),   
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              child: Stack(
                                children: [
                                  Container(
                                   width: Weight*0.455,
                                   height: Height*0.2,
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
                                   child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: Height*0.15,
                                        decoration:const BoxDecoration( 
                                          image: DecorationImage(
                                            image: AssetImage('assets/images/coffee/coffee4-removebg-preview.png'),
                                          )
                                        ),
                                      ),
                                    const  Text(
                                        'cold coffee'
                                      ),
                                      
                                    ],
                                   ),
                                ),
                                Positioned(
                                  right: 0,
                                  bottom: 0,
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: Height*0.06, 
                                    width: Weight*0.1, 
                                    color: Colors.orange,
                                    child:const Text(
                                      '+',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white
                                      ),
                                    ),
                                  ),
                                )
                                ],
                              ),
                             onTap: () {
                             Get.to(const Sign_in());
                             },
                            ),   
                          )
              ])
                      ),
                      
                    ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: Weight*0.05,
                      left:  Weight*0.05
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Popular',
                          style: GoogleFonts.acme(
                            fontSize: 20
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.to(const ViewMore());
                          },
                           child: Text(
                            'view more',
                            style: GoogleFonts.acme(
                            fontSize: 20
                          ),
                           ))
                      ],
                    ),
                  ),
                shoppinCart(Height, Weight)
              ],
            ),
          ),
        ), 
    );
  }


}