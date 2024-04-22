import 'package:flutter/material.dart';
import 'package:itinerary_app/widgets/platformservices.dart';

class TopBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
        width: width,
        height: PlatFormservices.isMobile(context) ? 300 : 450,
        child: Image.asset('assets/images/mount.png', fit: BoxFit.cover
        )
        );
  }
}