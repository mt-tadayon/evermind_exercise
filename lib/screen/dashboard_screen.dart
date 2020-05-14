import 'package:evermindexercise/screen/widgets/program_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var backgroundImage = 'lib/assets/images/dashboard_background.jpg';

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(backgroundImage),
              ),
            ),
          ),
          Positioned(
            child: AppBar(
              backgroundColor: Colors.transparent,
              centerTitle: false,
              titleSpacing: 40.0,
              elevation: 0,
              title: Text(
                'evermind',
                textAlign: TextAlign.left,
                style: GoogleFonts.abrilFatface(
                    fontSize: 24.0, color: const Color(0xFF000000)),
              ),
              actions: [
                IconButton(
                  icon: Icon(
                    Icons.person_outline,
                    color: const Color(0xFF000000),
                  ),
                  onPressed: () {},
                  iconSize: 24.0,
                  alignment: Alignment.center,
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width * 0.90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                  color: const Color(0xFFFFFFFF)),
              child: Column(
                children: [
                  Container(
                    height: 60.0,
                    alignment: Alignment.center,
                    child: Text(
                      'Recommended Programmes',
                      style: GoogleFonts.libreBaskerville(
                        fontSize: 16.0,
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                            color: const Color(0xFFE5E5E5), width: 0.5),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      ProgramCard(
                        programDuration: '7 days programme',
                        programName: 'Working with \n thougths',
                        cardImagePath: 'lib/assets/images/working_thougths.jpg',
                      ),
                      ProgramCard(
                        programDuration: '4 day programme',
                        programName: '4 days of \n gratitude',
                        cardImagePath: 'lib/assets/images/gratitude.jpg',
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_library),
            title: Text('Library'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.outlined_flag),
            title: Text('My Journey'),
          )
        ],
      ),
    );
  }
}

