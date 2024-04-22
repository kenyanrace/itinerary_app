// ignore: file_names
// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:itinerary_app/widgets/platformservices.dart';
import 'package:itinerary_app/widgets/reusablebutton.dart';
import 'package:itinerary_app/widgets/reusabletext.dart';

// ignore: must_be_immutable
 class Footerpanel extends StatelessWidget {
  late bool isMobile;

  late bool isDesktop;

  @override
  Widget build(BuildContext context) {
    isMobile = PlatFormservices.isMobile(context) ? true : false;
    isDesktop = PlatFormservices.isDesktop(context) ? true : false;

    double width = MediaQuery.of(context).size.width;
    return Container(
        margin: EdgeInsets.symmetric(
            horizontal: isMobile ? 0 : width / 10,
            vertical: isMobile ? 0 : 20),
        padding: EdgeInsets.all(isMobile ? 5 : 10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: isMobile
                ? BorderRadius.only(
                    topLeft: Radius.circular(10), topRight: Radius.circular(10))
                : BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(.1),
                  blurRadius: 5,
                  spreadRadius: 2)
            ]),
        child: isDesktop
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [SocialNetwork(), WebInfo()],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [SocialNetwork(), WebInfo()]));
  }

  Widget SocialNetwork() => Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        BoldBlackText('Let\'s keep in touch!'),
        NormalGreyText(
            'Find us on any of these platforms, we respond 1-2 business days.'),
        SizedBox(height: 10),
        Row(children: [
          if (!isDesktop) Spacer(flex: 1),
          FloatingIconsButtons('assets/svgs/facebook.svg'),
          FloatingIconsButtons('assets/svgs/instagram-logo.svg'),
          FloatingIconsButtons('assets/svgs/tiktok(1).svg'),
          FloatingIconsButtons('assets/svgs/whatsapp.svg'),
          FloatingIconsButtons('assets/svgs/youtube.svg'),
          if (!isDesktop) Spacer(flex: 1)
        ])
      ]));

  Widget FloatingIconsButtons(String path) => Container(
      margin: EdgeInsets.all(5),
      height: 40,
      child: FloatingActionButton(
          backgroundColor: Colors.white,
          child: ColorLogoButton(path),
          onPressed: () {}));

  Widget WebInfo() => Container(
      margin: EdgeInsets.all(20),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        UsefulLink(),
        isMobile ? Spacer(flex: 1) : SizedBox(width: 50),
        OtherResources()
      ]));

  
  Widget UsefulLink() =>
      Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        NormalGreyText('USEFUL LINKS'),
        TextButtons('About Us', Colors.black12),
        TextButtons('Blog', Colors.black12),
        TextButtons('Github', Colors.black12),
        TextButtons('Free Products', Colors.black12)
      ]);

   Widget OtherResources() => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          NormalGreyText('OTHER RESOURCES'),
          TextButtons('MIT License', Colors.black12),
          TextButtons('Terms & Conditions', Colors.black12),
          TextButtons('Privacy Policy', Colors.black12),
          TextButtons('Contact Us', Colors.black12)
        ],
      );
}