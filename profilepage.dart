import 'package:flutter/material.dart';
import 'package:itinerary_app/colors.dart';

import 'package:itinerary_app/widgets/footerpanel.dart';
import 'package:itinerary_app/widgets/headerpanel.dart';
import 'package:itinerary_app/widgets/profilepanle.dart';
import 'package:itinerary_app/widgets/topbackground.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Pallete.borderColor, 
    body: 
       Stack(
        children: [
          TopBackground(),
          SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      HeaderPanel(),
                         Profilepanle(),
                          Footerpanel()
                          ]
                          ),
                )
              ]
              )/*:
            SafeArea(
                child: Stack(children: [
                TopBackground(),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      HeaderPanel(),
                      Profilepanle(),
                      Footerpanel()
                      ]),
               )   
        ],
      ),
     ),*/
      );
    
  }
} 