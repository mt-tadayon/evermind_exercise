import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProgramCard extends StatelessWidget {
  final String programDuration;
  final String programName;
  final String cardImagePath;

  ProgramCard({this.programDuration, this.programName, this.cardImagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      child: Card(
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
                image: DecorationImage(
                    image: AssetImage(this.cardImagePath), fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
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
            )
          ],
        ),
      ),
    );
  }
}
