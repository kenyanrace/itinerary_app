import 'package:flutter/material.dart';
import 'package:itinerary_app/widgets/profilecard.dart';
import 'package:itinerary_app/widgets/platformservices.dart';

class Profilepanle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isMobile = PlatFormservices.isMobile(context) ? true : false;
    double width = MediaQuery.of(context).size.width;
    return Container(
        margin: EdgeInsets.fromLTRB(
          isMobile ? 15 : width / 10,
            isMobile ? 0 : 150,
             isMobile ? 15 : width / 10, 10
             ),
        child: Stack(children: [
          ProfileCard(),
          Expanded(
              child:
                  Container(alignment: Alignment.center,
                   child: ProfileImage()
                   )
                   )
        ]
        )
        );
  }

  Widget ProfileImage() => CircleAvatar(
      radius: 70, backgroundImage: AssetImage('assets/images/person.png'));
}