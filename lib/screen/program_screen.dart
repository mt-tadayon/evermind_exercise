import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProgramScreen extends StatelessWidget {
  final String cardDuration;
  final String cardTitle;
  final String backgroundCardImage;
  final String heroTag;

  ProgramScreen({this.cardDuration, this.cardTitle, this.backgroundCardImage, this.heroTag});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2,
            child: Hero(
                tag: heroTag,
                child: Image.asset(
                  backgroundCardImage,
                  fit: BoxFit.cover,
                )),
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
              color: const Color(0xFFF8F9FA),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      offset: Offset(2, 5),
                      blurRadius: 5.0),
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
                color: const Color(0xFFFFFFFF),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    cardDuration,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    cardTitle,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.libreBaskerville(
                        fontWeight: FontWeight.w700, fontSize: 28.0),
                  ),
                  Center(
                    child: Text(
                      'In this 7-day programm, we\'ll help \n'
                      'you to write your thougths down, \n'
                      'identify any negative thinking and ...',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: const Color(0xFFE5E5E5),
                          width: 0.5,
                        ),
                      ),
                    ),
                    child: Text(
                      'Keep reading',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),
          )
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
                style: TextStyle(color: const Color(0xFFFFFFFF), fontSize: 18),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
