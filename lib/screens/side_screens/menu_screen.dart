import 'package:code_case_intern/core/blocks/setting_list_block.dart';
import 'package:code_case_intern/core/blocks/user_block.dart';
import 'package:flutter/material.dart';

import '../../core/blocks/current_balance.dart';
import '../../core/blocks/button_with_icon_block.dart';

class MenuScreen extends StatelessWidget {
    List<String>   settingSectionsTexts=['Your profile','Transactions','Settings','Help&Support','Sign out'];
    List<IconData> settingSectionsIcons=[Icons.person_2_outlined,Icons.assignment_outlined,Icons.settings,Icons.help,Icons.logout];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 20, top: 30, right: 20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.indigo.shade900,
          Colors.indigo.shade600,
          Colors.indigoAccent.shade100
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(onTap: () {
              Navigator.pop(context);
            },
                child: const ButtonWithIconBlock()),
            const UserBlock(),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15),
              height: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Expanded(
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: SettingListBlock(lable: settingSectionsTexts[index],icon: settingSectionsIcons[index],),
                    ),
                    separatorBuilder: (context, index) => Divider(color: Colors.grey.shade300,),
                    itemCount: 5),
              ),
            ),
          Container(
            height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text('Balance Coins',
                    style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),),
                  CurrentBalanceBlock()
                ],
              ),
          )
          ],
        ),
      ),
    );
  }
}
