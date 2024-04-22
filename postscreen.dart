import 'package:flutter/material.dart';
import 'package:itinerary_app/widgets/post_app_bar.dart';
import 'package:itinerary_app/widgets/post_bottom_bar.dart';
class PostScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context ){
    return Container(
      decoration: BoxDecoration(
     /* image: DecorationImage(
      image: AssetImage(
        assetName
        ),
        fit: Boxfit.cover,
        opacity: 0.7,
        ), 
*/
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: PostAppBar(),
        ),
          bottomNavigationBar: PostBottomBar(),
      ),
    );
  }
}