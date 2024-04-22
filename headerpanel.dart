// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:itinerary_app/widgets/ReUsableButton.dart';

// ignore: must_be_immutable
class HeaderPanel extends StatelessWidget {
   
  @override
  Widget build(BuildContext context) {
    
    return Container(
        padding: EdgeInsets.symmetric(),
        child:   Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [LeftSidePanel(), RightSidePanle()],
                ),
              
              );
  }

  Widget LeftSidePanel() =>
      Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        /// You can use your logo here. I using a text.
        Text('Timeless',
            style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.w800,
                letterSpacing: .5)),

      
        IconLabelButtons('DOCS', 'assets/svgs/document.svg')
      ]
      );

  Widget RightSidePanle() =>
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        LogoButton('assets/svgs/facebook.svg'),
        LogoButton('assets/svgs/instagram_logo.svg'),
        LogoButton('assets/svgs/tiktok(1).svg'),
        NormalButton('DOWNLOAD', Colors.grey, 'assets/svgs/download.svg',
            Colors.grey, Colors.white)
      ]
      );
}