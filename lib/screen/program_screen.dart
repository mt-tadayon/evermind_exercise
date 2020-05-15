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
            height: MediaQuery.of(context).size.height / 2,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(backgroundCardImage), fit: BoxFit.cover)),
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
              height: MediaQuery.of(context).size.height / 2,
              color: const Color(0xFFFFFFFF),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: const Color(0xFF000000),
              offset: Offset(1, 3),
              blurRadius: 5)
        ]),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xFF3E3F43),
              borderRadius: BorderRadius.all(
                Radius.circular(50.0),
              ),
            ),
            child: Center(
              child: Text(
                'Start the programme',
                style:
                    TextStyle(color: const Color(0xFFFFFFFF), fontSize: 18),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
