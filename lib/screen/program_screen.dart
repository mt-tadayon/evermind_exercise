import 'package:flutter/material.dart';

class ProgramScreen extends StatelessWidget {
  final String cardDuration;
  final String cardTitle;
  final String backgroundCardImage;

  ProgramScreen({this.cardDuration, this.cardTitle, this.backgroundCardImage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height/2,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(backgroundCardImage), fit: BoxFit.cover)
            ),
          ),
          Positioned(
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
                leading: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.black),
                  onPressed: () => Navigator.of(context).pop(),
                ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height/2,
              color: const Color(0xFFFFFFFF),
            ),
          )
        ],
      ),
    );
  }
}
