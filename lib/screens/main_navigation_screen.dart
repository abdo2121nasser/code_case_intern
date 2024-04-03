import 'package:code_case_intern/core/blocks/app_bar_charge_block.dart';
import 'package:code_case_intern/core/blocks/reward_list_block.dart';
import 'package:code_case_intern/core/cubits/navigation_cubit/navigation_cubit.dart';
import 'package:code_case_intern/core/cubits/navigation_cubit/navigation_cubit.dart';
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
            backgroundColor: Colors.indigoAccent.shade700,
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(10),
              child: SizedBox(),
            ),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15))),
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
                size: 30,
              ),
            ),
            actions: [
              AppBarChargesBlock(),
            ],
          ),
          body:navCubit.screens[navCubit.screenIndex] ,

        );
      },
    );
  }
}
