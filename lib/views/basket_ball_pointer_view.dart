import 'package:basketball/cubits/counter_cubit/counter_cubit.dart';
import 'package:basketball/widgets/bask_count_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BasketBallPointer extends StatelessWidget {
  const BasketBallPointer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: const MaterialApp(home: BasketBallCounterViewBady()),
    );
  }
}
