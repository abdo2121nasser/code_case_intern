import 'package:flutter/material.dart';

import '../../core/blocks/reward_list_block.dart';
import '../../core/blocks/rewards_title_block.dart';



class RewardScreen extends StatelessWidget {
  const RewardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 10),
          child: Text(
            'Rewards for leads:',
            style: TextStyle(fontSize: 20, color: Colors.black87),
          ),
        ),
        RewardsTitleBlock(),
        Divider(
          color: Colors.grey.shade400,
          indent: 20,
          endIndent: 20,
        ),
        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) => RewardListBlock(),
              separatorBuilder: (context, index) =>Divider(
                color: Colors.grey.shade400,
                indent: 20,
                endIndent: 20,
              ),
              itemCount: 8),
        ),
      ],
    );
  }
}
