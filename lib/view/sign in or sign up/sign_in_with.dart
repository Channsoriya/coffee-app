import 'package:flutter/material.dart';

Row signinorupwithsocail(BuildContext context) {
    return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height*0.07,
                      width:  MediaQuery.of(context).size.height*0.07,
                      decoration:const BoxDecoration(
                        color: Color.fromARGB(255, 235, 232, 232),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10)
                        ),
                        image: DecorationImage(
                          image: AssetImage('assets/images/icons/facebook (1).png')
                          )
                      ),
                    ),
                    Container(
                      height:  MediaQuery.of(context).size.height*0.07,
                      width:  MediaQuery.of(context).size.height*0.07,
                      decoration:const BoxDecoration(
                        color: Color.fromARGB(255, 235, 232, 232),
                         borderRadius: BorderRadius.all(
                          Radius.circular(10)
                        ),
                        image: DecorationImage(
                          image: AssetImage('assets/images/icons/search (1).png')
                          )
                      ),
                    ),
                    Container(
                      height:  MediaQuery.of(context).size.height*0.07,
                      width:  MediaQuery.of(context).size.height*0.07,
                      decoration:const BoxDecoration(
                        color: Color.fromARGB(255, 235, 232, 232),
                         borderRadius: BorderRadius.all(
                          Radius.circular(10)
                        ),
                        image: DecorationImage(
                          image: AssetImage('assets/images/icons/instagram (1).png')
                          )
                      ),
                    )
                  ],
                );
  }
