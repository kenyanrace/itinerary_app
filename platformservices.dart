import 'package:flutter/material.dart';

class PlatFormservices extends StatelessWidget {
  final Widget mobile, tablet, desktop;

  const PlatFormservices({super.key, 
  required this.mobile, 
  required this.tablet, 
  required this.desktop
  });
     

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    if (size.width > 1100) {
      return desktop;
    } else if (size.width >= 850)
      // ignore: curly_braces_in_flow_control_structures
      return tablet;
    else
      // ignore: curly_braces_in_flow_control_structures
      return mobile;
  }

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
          MediaQuery.of(context).size.width >= 850;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;
}