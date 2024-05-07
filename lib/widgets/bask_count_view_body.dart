import 'package:basketball/buttons.dart';
import 'package:basketball/const.dart';
import 'package:basketball/teamEnum.dart';
import 'package:flutter/material.dart';

class BasketBallCounterViewBady extends StatelessWidget {
  const BasketBallCounterViewBady({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        " Team A",
                        style: TextStyle(color: textColor, fontSize: 40),
                      ),
                      Text(
                        "0",
                        style: TextStyle(color: textColor, fontSize: 100),
                      ),
                      BottonStyle(
                        numberCount: 1,
                        theTeam: TeamName.A,
                      ),
                      hight16,
                      BottonStyle(
                        numberCount: 2,
                        theTeam: TeamName.A,
                      ),
                      hight16,
                      BottonStyle(
                        numberCount: 3,
                        theTeam: TeamName.A,
                      ),
                    ],
                  ),
                  VerticalDivider(
                    thickness: 1,
                    color: mainColor,
                  ),
                  Column(
                    children: [
                      Text(
                        " Team B",
                        style: TextStyle(color: textColor, fontSize: 40),
                      ),
                      Text(
                        "0",
                        style: TextStyle(color: textColor, fontSize: 100),
                      ),
                      BottonStyle(
                        numberCount: 1,
                        theTeam: TeamName.B,
                      ),
                      hight16,
                      BottonStyle(
                        numberCount: 2,
                        theTeam: TeamName.B,
                      ),
                      hight16,
                      BottonStyle(
                        numberCount: 3,
                        theTeam: TeamName.B,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(
              flex: 3,
            ),
            const BottonStyle(
              numberCount: 0,
              theTeam: TeamName.AB,
            ),
            const Spacer(
              flex: 3,
            )
          ],
        ),
      );
  }
}