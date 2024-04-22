import 'package:flutter/material.dart';
import 'package:itinerary_app/colors.dart';
// ignore: must_be_immutable
class Preference extends StatefulWidget {
   Color? textColor;
   Color? groundColor;
  final Color borderColor;
  final String text;
  
  double sizew;
  double sizeh;
   Preference({super.key, 
   this.textColor, 
   this.groundColor, 
   required this.borderColor, 
   required this.text,
   required this.sizew,
   required this.sizeh
  
   }
   );

  @override
  State<Preference> createState() => _PreferenceState();
}

class _PreferenceState extends State<Preference> {
  bool _isButtonTapped = false;
 
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        setState(() {
          _isButtonTapped = !_isButtonTapped;

           /*if (_isButtonTapped) {
            widget.groundColor = Colors.black; // Change to desired color
          } else {
            widget.groundColor = widget.groundColor; // Change back to normal color
          }*/
        });
      },
      child: Container(
        width: widget.sizew,
        height: widget.sizeh,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              color: widget.borderColor,
              width: 1.0),
          color: _isButtonTapped ?  Colors.black : widget.groundColor
             
             
            ),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              color: widget.textColor = Pallete.gradient2
            ),
            ),
          ),
      ),
    );
  }
}
