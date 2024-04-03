import 'package:code_case_intern/core/blocks/current_balance.dart';
import 'package:code_case_intern/core/blocks/reward_list_block.dart';
import 'package:code_case_intern/core/cubits/navigation_cubit/navigation_cubit.dart';
import 'package:code_case_intern/core/cubits/navigation_cubit/navigation_cubit.dart';
import 'package:code_case_intern/screens/side_screens/menu_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/blocks/rewards_title_block.dart';

class MainNavigationScreen extends StatelessWidget {
  const MainNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NavigationCubit, NavigationState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var navCubit = NavigationCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.indigo.shade800,
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(10),
              child: SizedBox(),
            ),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15))),
            leading: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MenuScreen(),));
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
                size: 30,
              ),
            ),
            actions: [
              CurrentBalanceBlock(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(

          elevation: 20,
          selectedItemColor: Colors.black87,
          unselectedItemColor: Colors.grey.shade700,
          onTap: (newIndex) => navCubit.changeScreenIndex(newIndex:  newIndex,),
          currentIndex:navCubit.screenIndex,
          items: [
            const BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            const BottomNavigationBarItem(icon: Icon(Icons.monetization_on_outlined), label: ''),
            const BottomNavigationBarItem(icon: Icon(Icons.medical_information), label:''),
            const BottomNavigationBarItem(icon: Icon(Icons.signal_cellular_alt_sharp), label: ''),
          ],
        ),
          body:navCubit.screens[navCubit.screenIndex] ,

        );
      },
    );
  }
}
