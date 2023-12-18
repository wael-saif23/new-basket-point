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
//  VoidCallback Callback(Function onPresed) {
//     setState(() {
//       onPresed;
//     });
//   }

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
                        "$teamAPoints",
                        style: const TextStyle(color: textColor, fontSize: 100),
                      ),
                      const BottonStyle(
                        numberCount: 1,
                        theTeam: TeamName.A,
                        // Callbackfunction: Callback
                      ),
                      hight16,
                      const BottonStyle(
                        numberCount: 2,
                        theTeam: TeamName.A,
                      ),
                      hight16,
                      const BottonStyle(
                        numberCount: 3,
                        theTeam: TeamName.A,
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
                        "$teamBPoints",
                        style: const TextStyle(color: textColor, fontSize: 100),
                      ),
                      const BottonStyle(
                        numberCount: 1,
                        theTeam: TeamName.B,
                      ),
                      hight16,
                      const BottonStyle(
                        numberCount: 2,
                        theTeam: TeamName.B,
                      ),
                      hight16,
                      const BottonStyle(
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
            const BottonStyle(theTeam: TeamName.AB),
            const Spacer(
              flex: 3,
            )
          ],
        ),
      ),
    );
  }
}

int teamAPoints = 0;
int teamBPoints = 0;
