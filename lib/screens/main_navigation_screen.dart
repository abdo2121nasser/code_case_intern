import 'package:code_case_intern/core/blocks/app_bar_charge_block.dart';
import 'package:flutter/material.dart';

class MainNavigationScreen extends StatelessWidget {
  const MainNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.indigoAccent.shade700,
      bottom: const PreferredSize(
        preferredSize: Size.fromHeight(10), child:SizedBox(),
      ),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15))),
   leading: IconButton(
     onPressed: (){}, icon: const Icon(Icons.menu,color: Colors.white,size: 30,),
   ),
          actions: [
               AppBarChargesBlock(),
          ],
    ),
    );

  }
}
