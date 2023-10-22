import 'package:app_coffee/view/sign%20in%20or%20sign%20up/sign%20in%20or%20sign%20up.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashCreen extends StatefulWidget {
  const SplashCreen({super.key});

  @override
  State<SplashCreen> createState() => _SplashCreenState();
}

class _SplashCreenState extends State<SplashCreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2),(){
      Get.off( const SignInOrSignUP());
    },
    );
     FlutterNativeSplash.remove();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 19, 236, 92),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200, 
                width: 200,
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
                     fontSize: 50,
                     color: Colors.white,
                     fontWeight: FontWeight.bold
                  ),
              ),
             const SizedBox(
                 height: 30,
              ),
             const CircularProgressIndicator(
                color: Colors.white,
              )
            ],
          ),
        ),
      ),

    );
  }
}