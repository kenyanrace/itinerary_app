import 'package:flutter/material.dart';
import 'package:itinerary_app/colors.dart';
import 'package:itinerary_app/widgets/preference.dart';
import 'package:itinerary_app/screens/itinerary.dart';
class Preferences extends StatelessWidget {
  const Preferences({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: Text(
          'Your Preferences'
       ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            // First column
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // youtube video
                    //Padding(
                     // padding: const EdgeInsets.all(8.0),
                     /* child: AspectRatio(
                        aspectRatio: 16 / 9,
                        child: */
                
                    // comment section & recommended videos
                    //Expanded(
                      Container(
                              color: Colors.deepPurple[300],
                              height: 60,
                              
                              child: 
                               Preference(
                                 borderColor: Colors.white,
                                  text: 'Dining', 
                                  sizew: 200, 
                                  sizeh: 50,
                                  textColor: Pallete.gradient2,
                                  ),
                                  
                                  ),
                                  
                               Container(
                              color: Colors.deepPurple[300],
                              height: 60,
                              
                              child:Row(
                            
                            children: [
                               Preference(
                                 borderColor: Colors.white,
                                  text: 'breakfast', 
                                 sizew: 200, 
                                 sizeh: 50,
                                 textColor: Pallete.gradient2,
                                ),
                               Preference(
                               borderColor: Colors.white, 
                               text: 'Brunch', 
                               sizew: 150, 
                               sizeh: 50
                               ),
                                                           Preference(
                               borderColor: Colors.white,
                                text: 'Pizzeria', 
                                sizew: 200,
                                 sizeh: 50
                                 ),
                                 Preference(
                                 borderColor: Colors.white,
                                  text: 'Coffee', 
                                  sizew: 200,
                                   sizeh: 60
                                   ),
                              ]
                            ),
                            ),
                            Container(
                              color: Colors.deepPurple[300],
                              height:50,
                              child: Row(
                                children: [
                                   Preference(
                                borderColor: Colors.white,
                                 text: 'Dessert Bar', 
                                 sizew: 200,
                                  sizeh: 50
                                  ),
                                  Preference(
                                borderColor: Colors.white,
                                 text: 'Fastfood Diner', 
                                 sizew: 200,
                                  sizeh: 50
                                  ),
                                  Preference(
                                borderColor: Colors.white,
                                 text: 'Restaurant', 
                                 sizew: 200,
                                  sizeh: 50
                                  ),
                                  Preference(
                                borderColor: Colors.white,
                                 text: 'Grill', 
                                 sizew: 200,
                                  sizeh: 50
                                  ),
                                  Preference(
                                borderColor: Color.fromARGB(255, 218, 208, 208),
                                 text: 'Wine experience', 
                                 sizew: 200,
                                  sizeh: 50
                                  ),
                                ],
                              )
                            ),
                            Container(
                              color: Colors.deepPurple[300],
                              height: 60,
                              
                              child:Row(
                            
                            children: [
                               Preference(
                                borderColor: Colors.white,
                                 text: 'Cafe', 
                                 sizew: 200,
                                  sizeh: 50
                                  ),
                                  Preference(
                                borderColor: Colors.white,
                                 text: 'Bar', 
                                 sizew: 200,
                                  sizeh: 50
                                  ),
                                  Preference(
                                borderColor: Colors.white,
                                 text: 'Coctail bar', 
                                 sizew: 200,
                                  sizeh: 50
                                  ),
                                  Preference(
                                borderColor: Colors.white,
                                 text: 'Snack bar', 
                                 sizew: 200,
                                  sizeh: 50
                                  ),
                                  Preference(
                                borderColor: Colors.white,
                                 text: 'Sea food', 
                                 sizew: 200,
                                  sizeh: 50
                                  ),
                            ]
                            ),
                            ),
                             Container(
                              color: Colors.deepPurple[300],
                              height: 60,
                              child: Row(
                                children: [
                                   Preference(
                                borderColor: Colors.white,
                                 text: 'Shopping experience', 
                                 sizew: 200,
                                  sizeh: 50
                                  ),
                                  Preference(
                                borderColor: Colors.white,
                                 text: 'Vegan option', 
                                 sizew: 200,
                                  sizeh: 50
                                  )
                                ],
                              )
                            ),
                            
                            SizedBox(height: 20,),
                            
                            Container(
                              color: Colors.deepPurple[300],
                              height: 80,
                              child:Preference(
                              borderColor: Colors.white,
                               text: 'Destination', 
                               sizew: 200, 
                               sizeh: 50
                               ),
                            ),
                            Container(
                              color: Colors.deepPurple[300],
                              height: 60,
                              child: Row(
                                children: [
                                   Preference(
                            borderColor: Colors.black,
                             text: 'Park', 
                             sizew: 200, 
                             sizeh: 50
                             ),
                             Preference(
                              borderColor: Colors.white, 
                              text: 'Museum', 
                              sizew: 150, 
                              sizeh: 50
                              ),
                            Preference(
                              borderColor: Colors.white,
                               text: 'Gallery', 
                               sizew: 200,
                                sizeh: 50
                                ),
                                Preference(
                              borderColor: Colors.white,
                               text: 'Nature trails', 
                               sizew: 200,
                                sizeh: 50
                                ),
                                ],
                              ),
                              ),

                            SizedBox(height: 20,),

                       Container(
                              color: Colors.deepPurple[300],
                              height: 80,
                              child: Preference(
                              borderColor: Colors.white,
                               text: 'Activities', 
                               sizew: 200, 
                               sizeh: 50
                               ),
                            ),
                Container(
                              color: Colors.deepPurple[300],
                              height: 60,
                              child: Row(
                                children: [Preference(
                            borderColor: Colors.white,
                             text: 'Dhow trip', 
                             sizew: 200, 
                             sizeh: 50
                             ),
                             Preference(
                              borderColor: Colors.white, 
                              text: 'Yatch trip', 
                              sizew: 150, 
                              sizeh: 50
                              ),
                            Preference(
                              borderColor: Colors.white,
                               text: 'Snorkelling', 
                               sizew: 200,
                                sizeh: 50
                                ),
                                Preference(
                              borderColor: Colors.white,
                               text: 'Swimming(pool)', 
                               sizew: 200,
                                sizeh: 50
                                ),
                                Preference(
                              borderColor: Colors.white,
                               text: 'Swimming(ocean)', 
                               sizew: 200,
                                sizeh: 50
                                ),
                                ],
                                ),
                                ),
                                Container(
                              color: Colors.deepPurple[300],
                              height: 60,
                              child: Row(
                                children: [Preference(
                              borderColor: Colors.white,
                               text: 'Dirt biking', 
                               sizew: 200,
                                sizeh: 50
                                ),
                                Preference(
                              borderColor: Colors.white,
                               text: 'card, board games', 
                               sizew: 200,
                                sizeh: 50
                                ),
                                Preference(
                              borderColor: Colors.white,
                               text: 'Live band', 
                               sizew: 200,
                                sizeh: 50
                                ),
                                Preference(
                              borderColor: Colors.white,
                               text: 'Dj experience', 
                               sizew: 200,
                                sizeh: 50
                                ),
                                Preference(
                              borderColor: Colors.white,
                               text:'Clubbing', 
                               sizew: 200,
                                sizeh: 50
                                ),
                                ]
                                ),
                                ),
                          
                      
                        SizedBox(height: 20,),
                       Container(
                              color: Colors.deepPurple[300],
                              height: 80,child: Preference(
                              borderColor: Colors.white,
                               text: 'Wellness', 
                               sizew: 200, 
                               sizeh: 50
                               ),
                            ),
                         Container(
                              color: Colors.deepPurple[300],
                              height: 80,child: Row(children: [Preference(
                            borderColor: Colors.black,
                             text: 'Yoga', 
                             sizew: 200, 
                             sizeh: 50
                             ),
                             Preference(
                              borderColor: Colors.white, 
                              text: 'Spa', 
                              sizew: 150, 
                              sizeh: 50
                              ),
                            Preference(
                              borderColor: Colors.white,
                               text: 'Gym', 
                               sizew: 200,
                                sizeh: 50
                                ),],),
                            ),
                            ElevatedButton(
                              onPressed:() { Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Itinenary(),
                    ),
                            );
                            },
                     child: Text('That\'s all')) 
                  ]
                
                ),
                
              ),
            ),

            // second column
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 300,
                color: Colors.deepPurple[300],
              ),
            )
          ],
        ),
        
      ),
      
    );
  }
}