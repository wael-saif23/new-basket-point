import 'package:basketball/const.dart';
import 'package:basketball/cubits/counter_cubit/counter_cubit.dart';

import 'package:basketball/teamEnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottonStyle extends StatelessWidget {
  const BottonStyle({
    super.key,
    this.numberCount = 0,
    required this.theTeam,
  });

  final int numberCount;
  final TeamName theTeam;

  final String reset = 'Reset';

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        BlocProvider.of<CounterCubit>(context).addPoints(team: theTeam,points: numberCount);
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
    // TeamName teamName = theTeam;
        // bool inRing0to99 = globalTeamAPoints < 99 &&
        //     globalTeamBPoints < 99 &&
        //     globalTeamAPoints > -1 &&
        //     globalTeamBPoints > -1;
        // if (inRing0to99) {
        //   switch (teamName) {
        //     case TeamName.A:
        //       globalTeamAPoints = globalTeamAPoints + numberCount;
        //       break;
        //     case TeamName.B:
        //       globalTeamBPoints = globalTeamBPoints + numberCount;
        //       break;
        //     case TeamName.AB:
        //       globalTeamAPoints = 0;
        //       globalTeamBPoints = 0;
        //       break;
        //   }
     
        // } else {
        //   globalTeamAPoints = 0;
        //   globalTeamBPoints = 0;
        // }