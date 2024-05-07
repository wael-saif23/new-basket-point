


import 'package:basketball/widgets/bask_count_view_body.dart';
import 'package:flutter/material.dart';

class BasketBallPointer extends StatefulWidget {
  const BasketBallPointer({super.key});

  @override
  State<BasketBallPointer> createState() => _BasketBallPointerState();
}

class _BasketBallPointerState extends State<BasketBallPointer> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: BasketBallCounterViewBady());
  }
}
