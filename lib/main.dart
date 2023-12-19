import 'package:basketball/buttons.dart';
import 'package:basketball/const.dart';
import 'package:basketball/teamEnum.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BasketBallPointer());
}

class BasketBallPointer extends StatefulWidget {
  const BasketBallPointer({super.key});

  @override
  State<BasketBallPointer> createState() => _BasketBallPointerState();
}

class _BasketBallPointerState extends State<BasketBallPointer> {
  // this function to get numbers of eich team from buttons in file button
  // and update numbers
  // i make global variables to sent the number of global var to BottonStyle class in button file
  void callback(int teamAPointsss, int teamBPointsss) {
    setState(() {
      globalTeamAPoints = teamAPointsss;
      globalTeamBPoints = teamBPointsss;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Points counter",
            style: TextStyle(fontWeight: FontWeight.bold, color: textColor),
          ),
          backgroundColor: mainColor,
        ),
        body: Column(
          children: [
            const Spacer(
              flex: 1,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text(
                        " Team A",
                        style: TextStyle(color: textColor, fontSize: 40),
                      ),
                      Text(
                        "$globalTeamAPoints",
                        style: const TextStyle(color: textColor, fontSize: 100),
                      ),
                      BottonStyle(
                        numberCount: 1,
                        theTeam: TeamName.A,
                        callBackFunction: callback,
                      ),
                      hight16,
                      BottonStyle(
                        numberCount: 2,
                        theTeam: TeamName.A,
                        callBackFunction: callback,
                      ),
                      hight16,
                      BottonStyle(
                        numberCount: 3,
                        theTeam: TeamName.A,
                        callBackFunction: callback,
                      ),
                    ],
                  ),
                  const VerticalDivider(
                    thickness: 1,
                    color: mainColor,
                  ),
                  Column(
                    children: [
                      const Text(
                        " Team B",
                        style: TextStyle(color: textColor, fontSize: 40),
                      ),
                      Text(
                        "$globalTeamBPoints",
                        style: const TextStyle(color: textColor, fontSize: 100),
                      ),
                      BottonStyle(
                        numberCount: 1,
                        theTeam: TeamName.B,
                        callBackFunction: callback,
                      ),
                      hight16,
                      BottonStyle(
                        numberCount: 2,
                        theTeam: TeamName.B,
                        callBackFunction: callback,
                      ),
                      hight16,
                      BottonStyle(
                        numberCount: 3,
                        theTeam: TeamName.B,
                        callBackFunction: callback,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(
              flex: 3,
            ),
            BottonStyle(
              numberCount: 0,
              theTeam: TeamName.AB,
              callBackFunction: callback,
            ),
            const Spacer(
              flex: 3,
            )
          ],
        ),
      ),
    );
  }
}

// global var to sent anther file or class
int globalTeamAPoints = 0;
int globalTeamBPoints = 0;
