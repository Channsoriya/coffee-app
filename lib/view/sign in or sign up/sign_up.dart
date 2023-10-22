
// ignore_for_file: non_constant_identifier_names, override_on_non_overriding_member

import 'package:app_coffee/view/sign%20in%20or%20sign%20up/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'sign_in_with.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
    TextEditingController Fullnamecontroller=TextEditingController();
    TextEditingController Emailcontroller=TextEditingController();
    TextEditingController Passwordcontroller=TextEditingController();
    TextEditingController Comfirmcontroller=TextEditingController();
    final forkey=GlobalKey<FormState>();
    bool ishide=true;
    FocusNode FieldOne=FocusNode();
    FocusNode FieldTwo=FocusNode();
    FocusNode FieldThree=FocusNode();
    FocusNode FieldFouth=FocusNode();
  Widget build(BuildContext context) {
    double Height=MediaQuery.of(context).size.height;
    double Weight=MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
      child: Center(
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
                     height: MediaQuery.of(context).size.height*0.03,
                    ),           
                 Text(
                  'Create your account',
                  style: GoogleFonts.pangolin(
                     fontSize: 25,
                     fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(
                     height: MediaQuery.of(context).size.height*0.02,
                    ),
                TextFormField(
                  focusNode: FieldOne,
                  controller: Fullnamecontroller,
                  style: GoogleFonts.pangolin(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                  decoration: InputDecoration(
                    hintText: 'Full name',
                    hintStyle: GoogleFonts.pangolin(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                    border:const OutlineInputBorder(
                       borderSide: BorderSide(
                        style: BorderStyle.none,
                        width: 0
                       )
                    ),
                  ),
                  onFieldSubmitted: (value) {
                    FocusScope.of(context).requestFocus(FieldTwo);
                  },
                ),
                SizedBox(
                     height: MediaQuery.of(context).size.height*0.02,
                    ),
                TextFormField(
                  focusNode: FieldTwo,
                  controller: Emailcontroller,
                  style: GoogleFonts.pangolin(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                  decoration: InputDecoration(
                    hintText: 'Email or phone',
                    hintStyle: GoogleFonts.pangolin(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                    border:const OutlineInputBorder(
                       borderSide: BorderSide(
                        style: BorderStyle.none,
                        width: 0
                       )
                    )
                  ),
                  onFieldSubmitted: (value) {
                    FocusScope.of(context).requestFocus(FieldThree);
                  },
                ),
                SizedBox(
                     height: MediaQuery.of(context).size.height*0.02,
                    ),
                TextFormField(
                  focusNode: FieldThree,
                  controller: Passwordcontroller,
                  style: GoogleFonts.pangolin(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: GoogleFonts.pangolin(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
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
                  onFieldSubmitted: (value) {
                    FocusScope.of(context).requestFocus(FieldFouth);
                  },
                ),
                TextFormField(
                  focusNode: FieldFouth,
                  controller: Comfirmcontroller,
                  style: GoogleFonts.pangolin(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                  decoration: InputDecoration(
                    hintText: 'comfirm password',
                    hintStyle: GoogleFonts.pangolin(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
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
                     height: MediaQuery.of(context).size.height*0.02,
                    ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     SizedBox(
                      width: MediaQuery.of(context).size.width*0.8,
                      child: ElevatedButton(
                        onPressed: () {
                           Get.to(const Sign_in(),
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
                          'Sign Up',
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
                     height: MediaQuery.of(context).size.height*0.02,
                    ),
                    signinorupwithsocail(context),
                    SizedBox(
                     height: MediaQuery.of(context).size.height*0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         Text(
                          'do have an account ?',
                          style: GoogleFonts.pangolin(
                          fontSize: 20,
                        ),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.off(const Sign_in());
                            
                          },
                         child: Text(
                          'Sign In',
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
    );
  }
}