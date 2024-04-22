import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:itinerary_app/widgets/mysql.dart';
class Itinerarymodule extends StatefulWidget {
  const Itinerarymodule({super.key});

  @override
  State<Itinerarymodule> createState() => _ItinerarymoduleState();
}

class _ItinerarymoduleState extends State<Itinerarymodule> {
  var db = Mysql();

  var excursion = '';

  void _getDescription() {
    db.getConnection().then((conn) {
      String sql = 'select description from itinerary.destination;';
      conn.query(sql).then((results) {
        for(var row in results){
          setState(() {
            excursion = row[0];
          });
        }
      });
      conn.close();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      
      clipper: OvalLeftBorderClipper(),
              child:Container(
                height: 200,
                color: Colors.black54,
                child: Center(
                  child: Text(
                    '$excursion'
                    ),
                  
                  
                  )
                

                )
                );
  }
}