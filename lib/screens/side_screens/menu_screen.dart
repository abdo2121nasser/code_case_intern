import 'package:code_case_intern/core/blocks/user_block.dart';
import 'package:flutter/material.dart';

import '../../core/blocks/button_with_icon_block.dart';


class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
       padding: const EdgeInsets.only(left: 20,top: 30),
       width: MediaQuery.of(context).size.width,
       height: MediaQuery.of(context).size.height,
       decoration: BoxDecoration(
         gradient: LinearGradient(
           colors: [
             Colors.indigo.shade900,Colors.indigo.shade600,Colors.indigoAccent.shade100
           ],
           begin: Alignment.topCenter,
           end: Alignment.bottomCenter
         )
       ),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           InkWell(
               onTap: (){},
               child: ButtonWithIconBlock()),
           UserBlock()
         ],
       ),
     ),
    );
  }
}
