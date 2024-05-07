import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:basketball/teamEnum.dart';
part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());
  int teamAScore = 0;
  int teamBScore = 0;
  addPoints({int points = 0, required TeamName team}) {
    if (team == TeamName.A) {
      teamAScore += points;
      emit(CounterInitial());
    } else if (team == TeamName.B) {
      teamBScore += points;
 emit(CounterInitial());
    } else if (team == TeamName.AB) {
      teamAScore = 0;
      teamBScore = 0;
      emit(CounterInitial());
    }
  }
}
