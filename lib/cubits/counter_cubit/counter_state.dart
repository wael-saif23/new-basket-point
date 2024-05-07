part of 'counter_cubit.dart';

@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {}

final class CounterForTeamA extends CounterState {}

final class CounterForTeamB extends CounterState {}

final class Counter0 extends CounterState {}

