import 'package:app_coffee/view/sign%20in%20or%20sign%20up/sign_in.dart';
import 'package:app_coffee/view/sign%20in%20or%20sign%20up/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInOrSignUP extends StatelessWidget {
  const SignInOrSignUP({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
          width: double.infinity,
          height: double.infinity,
          color:const Color.fromARGB(255, 19, 236, 92),  
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height*0.07,
              ),
              Container(
                height: 100, 
                width: 100,
                decoration:const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/icons/cs_caf`e.jpg'),
                    fit: BoxFit.cover
                  )
                ),
              ),
              Text(
                'CS CAF`E',
                style: GoogleFonts.kaushanScript(
                     fontSize: 30,
                     color: Colors.white,
                     fontWeight: FontWeight.bold
                  ),

              )
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          height: MediaQuery.of(context).size.height*0.6,
          left: 0,
          right: 0,
          child: Container(
            decoration:const BoxDecoration(
              color: Color.fromARGB(255, 209, 199, 199),
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height*0.27,
          height: MediaQuery.of(context).size.height*0.6,
          left: 15,
          right: 15,
          child: Container(
            decoration:const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(30)
              )
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                   height: MediaQuery.of(context).size.height*0.06,
                  ),
                   Text(
                    'Welcome to cs cafè',
                    style: GoogleFonts.kaushanScript(
                       fontSize: 40
                    ),
                  ),
                  const Text(
                    'Sing in or create a new account',
                    style: TextStyle(
                      fontSize: 15
                    ),
                  ),
                  SizedBox(
                   height: MediaQuery.of(context).size.height*0.1,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.7,
                    child: ElevatedButton(
                      onPressed: () {
                         Get.to(const Sign_in(),
                         duration:const Duration(seconds: 2) ,
                         );
                      },
                       style: ElevatedButton.styleFrom(
                        backgroundColor:const Color.fromARGB(255, 19, 236, 92),
                        shape: const StadiumBorder(),
                        side: const BorderSide(
                        )
                       ),
                       child: Text(
                        'Sign In',
                        style: GoogleFonts.freehand(
                            fontSize: 30
                        ),
                       ),
                       ),
                  ),
                   SizedBox(
                   height: MediaQuery.of(context).size.height*0.03,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.7,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(const SignUp(),
                        duration:const Duration(seconds: 3)
                        );
                      },
                       style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: const StadiumBorder(),
                        side: const BorderSide(
                          width: 2,
                          color: Color.fromARGB(255, 19, 236, 92),
                        )
                       ),
                       child: Text(
                        'Sign Up',
                        style: GoogleFonts.freehand(
                            color:const Color.fromARGB(255, 19, 236, 92),
                            fontSize: 30
                        ),
                       ),
                       ),
                  ),
                  SizedBox(
                   height: MediaQuery.of(context).size.height*0.03,
                  ),
                  Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [      
                      Container(
                      height: 2,
                      width:  MediaQuery.of(context).size.height*0.09,
                      color:const Color.fromARGB(255, 180, 175, 175),
                      ),
                     const Text(
                        'Or connect using'
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
                  Row(
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
                  )
                ],
              ),
            ),
          ),
        ),
        ]
        
      ),
    );
  }
}