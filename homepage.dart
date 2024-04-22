import 'package:flutter/material.dart';
import 'package:itinerary_app/screens/login.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image(
            image: AssetImage('assets/images/welcome1.png'), // Corrected asset path
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: const Text('Coastal Adventures'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: const Text('Take trips!\nMake Memories'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: AlignmentDirectional.centerEnd,
              child: const Text(
                "Your ultimate companion for seamless planning\n and unforgettable experiences.\n"
                "From discovering hidden gems to\n organizing every detail of your trip with ease,\n"
                "embark on a voyage of discovery like never before.\nLet's transform your wanderlust into a meticulously crafted itinerary\n"
                "that's as unique as you are.",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Loginpage()),
                );
              },
              child: const Text('Get started'),
            ),
          ),
        ],
      ),
    );
  }
}
