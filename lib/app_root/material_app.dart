import 'package:code_case_intern/screens/main_navigation_screen.dart';
import 'package:flutter/material.dart';



class CodeCaseIntern extends StatelessWidget {
  const CodeCaseIntern({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainNavigationScreen(),
    );
  }
}
