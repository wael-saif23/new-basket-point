import 'package:basketball/const.dart';
import 'package:basketball/main.dart';
import 'package:basketball/teamEnum.dart';
import 'package:flutter/material.dart';

class BottonStyle extends StatelessWidget {
  const BottonStyle({
    super.key,
    this.numberCount = 0,
    required this.theTeam,
    required this.callBackFunction,
  });

  final int numberCount;
  final TeamName theTeam;
  final Function callBackFunction;
  final String reset = 'Reset';

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        TeamName teamName = theTeam;
        bool inRing0to99 = globalTeamAPoints < 99 &&
            globalTeamBPoints < 99 &&
            globalTeamAPoints > -1 &&
            globalTeamBPoints > -1;
        if (inRing0to99) {
          switch (teamName) {
            case TeamName.A:
              globalTeamAPoints = globalTeamAPoints + numberCount;
              break;
            case TeamName.B:
              globalTeamBPoints = globalTeamBPoints + numberCount;
              break;
            case TeamName.AB:
              globalTeamAPoints = 0;
              globalTeamBPoints = 0;
              break;
          }
          callBackFunction(globalTeamAPoints, globalTeamBPoints);
        } else {
          globalTeamAPoints = 0;
          globalTeamBPoints = 0;
        }
      },
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(mainColor),
        minimumSize: MaterialStatePropertyAll(Size(150, 45)),
      ),
      child: Text(
        numberCount > 0 ? "add $numberCount point" : reset,
        style: const TextStyle(fontSize: 18, color: textColor),
      ),
    );
  }
}
