import 'package:basketball_counter_app/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState>{
  CounterCubit(initialState) : super(initialState);


  int APoints = 0;
  int BPoints = 0;

  void Increment (bool teamA, int increment){
    teamA? APoints +=increment : BPoints +=increment;
    teamA? emit(CounterAIncState()): emit(CounterBIncState());
  }
}