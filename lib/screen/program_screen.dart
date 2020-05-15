import 'package:flutter/material.dart';

class ProgramScreen extends StatelessWidget {
  final String cardDuration;
  final String cardTitle;
  final String backgroundCardImage;

  ProgramScreen({this.cardDuration, this.cardTitle, this.backgroundCardImage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height/2,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(backgroundCardImage), fit: BoxFit.cover)
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height/2,
            color: const Color(0xFFFFFFFF),
          )
        ],
      ),
    );
  }
}
