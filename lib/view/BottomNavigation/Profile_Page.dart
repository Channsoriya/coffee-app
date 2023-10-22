
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile_Page extends StatelessWidget {
  const Profile_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 32, 227, 136),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading:Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
                    onPressed: () {
                      
                    }, 
                    icon:const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 40,
                    )
                    ),
        ),
        centerTitle: true, 
        title:const Text(
              'Profile',
              style: TextStyle(
                color: Colors.black
              ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                onPressed: () {
                
              },
               icon:const Icon(
                Icons.settings,
                color: Colors.black,
                size: 40,)),
            )
          ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Center(
                child: Column(
                  children:[
                    const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/coffee/cafè_Au_lait-removebg-preview.png'),
                    radius: 90,
                  ),
                  Text(
                    "Chann soriya",
                    style: GoogleFonts.acme(
                      color: Colors.black,
                      fontSize: 30
                    )
                  ),
                  Text(
                    "@channsoriya168",
                    style: GoogleFonts.acme(
                      color: Colors.black,
                      fontSize: 20
                    )
                  )
                  ]
                ),
                
              ),
              Text(
                "Name",
                    style: GoogleFonts.acme(
                      color: Colors.black,
                      fontSize: 20
                    )
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}