import 'package:flutter/material.dart';
import 'package:itinerary_app/widgets/platformservices.dart';
import 'package:itinerary_app/widgets/reusablebutton.dart';
import 'package:itinerary_app/widgets/reusabletext.dart';

// ignore: must_be_immutable
class ProfileinFo extends StatelessWidget {
  String data =
      'An artist of considerable range, Jenna the name taken by Melbourne-raised, Brooklyn-based Nick Murphy writes, performs and records all of his own music, giving it a warm, intimate feel with a solid groove structure. An artist of considerable range.';
  late bool isMobile;

  @override
  Widget build(BuildContext context) {
    isMobile = PlatFormservices.isMobile(context) ? true : false;
    return Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, 
        children: [
      Container(
          width: double.infinity,
          child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Spacer(flex: 1),
            SocialValue('Trips', 22),
            SocialValue('Photos', 10),
            SocialValue('Comments', 86),
            Spacer(flex: 10),
            NormalButton(
                'Edit', Colors.white, '', Colors.white, const Color.fromARGB(255, 77, 182, 172)),
            Spacer(flex: 1)
          ])),
      SizedBox(height: isMobile ? 20 : 50), LargeBoldTextBlack('Jenna Stones'),
      SizedBox(height: 10),
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.location_pin, size: 20, color: Colors.grey[400]),
            SizedBox(width: 5),
            NormalGreyText('LOS ANGELES, CALIFORNIA')
          ]),
      SizedBox(height: 30),
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.work, size: 20, color: Colors.grey[400]),
            SizedBox(width: 5),
            NormalGreyText('Solution Manager - Creative Team Officer')
          ]),
      SizedBox(height: 10),
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.school, size: 20, color: Colors.grey[400]),
            SizedBox(width: 5),
            NormalGreyText('University of Computer Science')
          ]),

      /// description
      Divider(height: 30, thickness: 1, color: Colors.grey[300]),
      NormalGreyText(data),
      SizedBox(height: 10),
      TextButtons('Show more', Colors.green)
    ]));
  }

  Widget SocialValue(String label, int value) => Container(
      padding: EdgeInsets.all(5),
      height: 50,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('$value',
                style: TextStyle(
                    color: Colors.grey[900],
                    fontSize: 12,
                    fontWeight: FontWeight.bold)),
            Text(label,
                style: TextStyle(
                    color: Colors.grey[900],
                    fontSize: 12,
                    fontWeight: FontWeight.bold))
          ]
          )
          );
}