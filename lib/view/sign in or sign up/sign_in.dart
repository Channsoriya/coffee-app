import 'package:app_coffee/view/home%20page/coffee_shop.dart';
import 'package:app_coffee/view/sign%20in%20or%20sign%20up/sign%20in%20or%20sign%20up.dart';
import 'package:app_coffee/view/sign%20in%20or%20sign%20up/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../BottomNavigation/HomeScreen.dart';
import 'sign_in_with.dart';

class Sign_in extends StatefulWidget {
  const Sign_in({super.key});

  @override
  State<Sign_in> createState() => _Sign_inState();
}

class _Sign_inState extends State<Sign_in> {
  @override
    TextEditingController Emailcontroller=TextEditingController();
    TextEditingController Passwordcontroller=TextEditingController();
    final forkey=GlobalKey<FormState>();
    bool ishide=true;
  Widget build(BuildContext context) {
    double Height=MediaQuery.of(context).size.height;
    double Weight=MediaQuery.of(context).size.width;
    return Scaffold(
    body: SafeArea(
      child: Center(
        child: Form(
          key: forkey,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                top: Height*0.02,
                right: Weight*0.08,
                left:  Weight*0.08,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Container(
                          height: 100, 
                          width: 100,
                          decoration:const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30)
                            ),
                            image: DecorationImage(
                              image: AssetImage('assets/images/icons/cs_caf`e.jpg'),
                              fit: BoxFit.cover
                            )
                          ),
                        ),
                    ],
                  ),    
                  SizedBox(
                       height: MediaQuery.of(context).size.height*0.06,
                      ),           
                   const Text(
                    'Sign in to your account',
                    style: TextStyle(
                      fontFamily: 'Aclonica-Regular',
                      fontSize: 25
                    ),
                  ),
                  SizedBox(
                       height: MediaQuery.of(context).size.height*0.02,
                      ),
                  TextFormField(
                    controller: Emailcontroller,
                    style: GoogleFonts.pangolin(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    decoration: const InputDecoration(
                      hintText: 'Email or phone',
                      hintStyle: TextStyle(
                            fontFamily: 'Aclonica-Regular',
                            fontSize: 20
                      ),
                      border:OutlineInputBorder(
                         borderSide: BorderSide(
                          style: BorderStyle.none,
                          width: 0
                         )
                      )
                    ),
                    validator: (value) {
                      
                    },
                  ),
                  SizedBox(
                   height: MediaQuery.of(context).size.height*0.02,
                      ),
                  TextFormField(
                    style: GoogleFonts.pangolin(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle:const TextStyle(
                            fontFamily: 'Aclonica-Regular',
                            fontSize: 20
                      ),
                      border:const OutlineInputBorder(
                         borderSide: BorderSide(
                          style: BorderStyle.none,
                          width: 0
                         )
                      ),
                      suffix: IconButton(
                        onPressed: () {
                         setState(() {
                            ishide=!ishide;
                         });
                        }, 
                        icon: Icon(
                          ishide?Icons.visibility_off:Icons.visibility
                        )),
                    ),
                    obscureText: ishide,
                  ),
                  SizedBox(
                       height: MediaQuery.of(context).size.height*0.06,
                      ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       SizedBox(
                        width: MediaQuery.of(context).size.width*0.8,
                        child: ElevatedButton(
                          onPressed: () {
                             Get.off(const CoffeShop(),
                             duration:const Duration(seconds: 2) ,
                             );
                          },
                            style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: const StadiumBorder(),
                            side: const BorderSide(
                              width: 2,
                              color: Colors.green
                            )
                           ),
                           child: Text(
                            'Sign In',
                            style: GoogleFonts.freehand(
                                color: Colors.green,
                                fontSize: 30
                            ),
                           ),
                        )
                        ),
                    ]
                  ),
                   SizedBox(
                       height: MediaQuery.of(context).size.height*0.06,
                      ),
                      Row(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [      
                          Container(
                          height: 2,
                          width:  MediaQuery.of(context).size.height*0.09,
                          color:const Color.fromARGB(255, 180, 175, 175),
                          ),
                          Text(
                            'Or connect using',
                            style: GoogleFonts.pangolin(
                            fontSize: 15,
                          ),
                          ),
                           Container(
                          height: 2,
                          width:  MediaQuery.of(context).size.height*0.09,
                          color:const Color.fromARGB(255, 180, 175, 175),
                          ),
                        ],
                      ),
                        SizedBox(
                       height: MediaQuery.of(context).size.height*0.03,
                      ),
                      signinorupwithsocail(context),
                      SizedBox(
                       height: MediaQuery.of(context).size.height*0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                           Text(
                            'don`t have an account ?',
                            style: GoogleFonts.pangolin(
                            fontSize: 20,
                          ),
                          ),
                          TextButton(
                            onPressed: () {
                              Get.off(const SignUp());
                              
                            },
                           child: Text(
                            'Sign Up',
                            style: GoogleFonts.pangolin(
                            fontSize: 20,
                          ),
                            ))
                        ],
                      )
                ],
              ),
            ),
          ),
        ),
      ),
    ),
    );
  }
}