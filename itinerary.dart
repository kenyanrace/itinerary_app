// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:itinerary_app/widgets/Itinerarymodule.dart';
//import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class Itinenary extends StatefulWidget {
  const Itinenary({super.key});
  

  @override
  State<Itinenary> createState() => _ItinenaryState();
}

class _ItinenaryState extends State<Itinenary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.blueGrey,
      body: Padding(
                padding: EdgeInsets.only(left: 150 , right: 150,),
             child: Column(
            children: [
              
              Container(
                height: 200,
                color: Colors.black54,
                  ),
              SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: 7,
                  itemBuilder: (context, index){
                    return Padding(
                      padding: EdgeInsets.all(12),
                      child: Itinerarymodule(),
                      );
                  }
                  
                  
                  
                  
                  ),
              )
                
                ],
                )
          ),
            );
          }
}
        
      
        
       /* body: FutureBuilder<List>(
          builder: (ctx,ss){ 
            if(ss.hasError)
            {
              print("error");
              }
              if(ss.hasData)
            {
             return Items(list:ss.data);
              }
              else{
                return CircularProgressIndicator();
              }
          ),*/
   

