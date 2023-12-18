import 'package:basketball/const.dart';
import 'package:basketball/main.dart';
import 'package:basketball/teamEnum.dart';
import 'package:flutter/material.dart';

class BottonStyle extends StatefulWidget {
  const BottonStyle({
    super.key,
    this.numberCount = 0,
    required this.theTeam,
    // required this.Callbackfunction,
  });

  final int numberCount;
  final TeamName theTeam;
  // final Function Callbackfunction;

  @override
  State<BottonStyle> createState() => _BottonStyleState();
}

class _BottonStyleState extends State<BottonStyle> {
  final String reset = 'Reset';

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        TeamName teamName = widget.theTeam;
        switch (teamName) {
          case TeamName.A:
            teamAPoints = teamAPoints + widget.numberCount;
            break;
          case TeamName.B:
            teamBPoints = teamBPoints + widget.numberCount;
            break;
          case TeamName.AB:
            teamAPoints = 0;
            teamBPoints = 0;
            break;
        }
      },
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(mainColor),
        minimumSize: MaterialStatePropertyAll(Size(150, 45)),
      ),
      child: Text(
        widget.numberCount > 0 ? "add ${widget.numberCount} point" : reset,
        style: const TextStyle(fontSize: 18, color: textColor),
      ),
    );
  }
}
