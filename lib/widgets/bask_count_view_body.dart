import 'package:basketball/buttons.dart';
import 'package:basketball/const.dart';
import 'package:basketball/cubits/counter_cubit/counter_cubit.dart';
import 'package:basketball/teamEnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BasketBallCounterViewBady extends StatelessWidget {
  const BasketBallCounterViewBady({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Points counter",
          style: TextStyle(fontWeight: FontWeight.bold, color: textColor),
        ),
        backgroundColor: mainColor,
      ),
      body: BlocBuilder<CounterCubit, CounterState>(
        builder: (context, state) {
          return Column(
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
                          BlocProvider.of<CounterCubit>(context)
                              .teamAScore
                              .toString(),
                          style:
                              const TextStyle(color: textColor, fontSize: 100),
                        ),
                        const BottonStyle(
                          numberCount: 1,
                          theTeam: TeamName.A,
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
                          BlocProvider.of<CounterCubit>(context)
                              .teamBScore
                              .toString(),
                          style:
                              const TextStyle(color: textColor, fontSize: 100),
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
              const BottonStyle(
                numberCount: 0,
                theTeam: TeamName.AB,
              ),
              const Spacer(
                flex: 3,
              )
            ],
          );
        },
      ),
    );
  }
}
