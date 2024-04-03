
import 'package:bloc/bloc.dart';
import 'package:code_case_intern/screens/navigation_screens/home_screen.dart';
import 'package:code_case_intern/screens/navigation_screens/rate_screen.dart';
import 'package:code_case_intern/screens/navigation_screens/reward_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter/material.dart';

import '../../../screens/navigation_screens/progress_screen.dart';

part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationInitial());
  static NavigationCubit get(context) => BlocProvider.of(context);
  List<Widget> screens=[HomeScreen(),RewardScreen(),RateScreen(),ProgressScreen()];
  int screenIndex=1;
  void changeScreenIndex({required int newIndex})
  {
    screenIndex=newIndex;
    emit(ChangeScreenIndexState());
  }



}
