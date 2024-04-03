import 'package:code_case_intern/screens/main_navigation_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/cubits/navigation_cubit/navigation_cubit.dart';



class CodeCaseIntern extends StatelessWidget {
  const CodeCaseIntern({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => NavigationCubit()),
      ]
      ,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainNavigationScreen(),
      ),
    );
  }
}
