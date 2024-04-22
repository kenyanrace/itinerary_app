import 'package:flutter/material.dart';
class PostBottomBar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
  return Container(
    height: MediaQuery.of(context).size.height / 2,
    padding: EdgeInsets.only(top: 20, left: 20, right: 20),
    decoration: BoxDecoration(
      color: Color(0xFFEDF2F6),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(40),
        topRight: Radius.circular(40),
      ),
    ),
    child: ListView(
      children: [
        Padding(
          padding: EdgeInsets.only(),
          child: Column(
              children: [Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                        "",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                      ),
                        ),
                        Row(children: [
                         /* Icon(
                            Icon.star,
                            color: Colors.amber,
                            size: 25,
                              ),*/
                              Text(
                                "data",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                              ),
                            ],
                            ),
                      ],
                     ),
                 
                     Text("data",
                       style: TextStyle(
                         color: Colors.black38,
                          fontSize: 16,
                       // textAlign: TextAlign.justify,
                       ),
                      ),
                     SizedBox(height: 40,),
                        Row(
                        children: [
                        Padding(
                          padding: EdgeInsets.only(right: 5),
                          child: Expanded(
                            child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            /*child: Image.asset(
                              name,
                              fit: BoxFit.cover,
                              width: 120,
                              height: 90,
                              ),*/
                            ),
                            ),
                          ),
                    
                        Padding(
                          padding: EdgeInsets.only(right: 5),
                          child: Expanded(
                            child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                           /* child: Image.asset(
                              name,
                              fit: BoxFit.cover,
                              width: 120,
                              height: 90,
                              ),*/
                            ),
                            ),
                          ),
                          Padding(
                          padding: EdgeInsets.only(right: 5),
                          child: Expanded(
                            child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            /*child: Image.asset(
                              name,
                              fit: BoxFit.cover,
                              width: 120,
                              height: 90,
                              ),*/
                            ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                            alignment: Alignment.center,
                            width: 120,
                            height: 90,
                            margin:EdgeInsets.only(right: 5),
                            decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(
                                ''
                                  ),
                                fit: BoxFit.cover,
                                opacity: 0.4,
                                ),
                            ),
                            child: Text(
                              "10+",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                              ),
                              ),
                          ),
                          ),
                       ],
                     ),
                       SizedBox(height: 15,),
                      // ignore: sized_box_for_whitespace
                      Container(
                      height: 80,
                     child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [BoxShadow(
                      color: Colors.black26,
                      blurRadius: 4,
                    ),
                    ],
                   ),
                   //child: Icon(icons.bookmark_outline, size 40),

                      ),
                      Container(
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 25),
                     decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    color: Colors.redAccent,
                    boxShadow: [BoxShadow(color: Colors.black,
                    blurRadius: 4,
                    ),
                    ],
                    ),
                    child: Text('Add Destination',
                    style:TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    )),
                  ),
                  ],

                ),
              ),
               ],
             )
           )
        ],

    ) ,
  );
}
}