import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../program_screen.dart';

class ProgramCard extends StatelessWidget {
  final String programDuration;
  final String programName;
  final String cardImagePath;
  final String heroTag;

  ProgramCard(
      {this.programDuration,
      this.programName,
      this.cardImagePath,
      this.heroTag});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProgramScreen(
                      backgroundCardImage: cardImagePath,
                      cardDuration: programDuration,
                      cardTitle: programName,
                      heroTag: heroTag,
                    )),
          );
        },
        child: Card(
          elevation: 10.0,
          child: Column(
            children: [
              Container(
                height: 150.0,
                width: 150.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5.0),
                    topRight: Radius.circular(5.0),
                  ),
                ),
                child: Hero(
                  tag: heroTag,
                  child: Image.asset(
                    this.cardImagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 15.0),
                child: Text(this.programDuration),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Text(
                  this.programName,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.libreBaskerville(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
