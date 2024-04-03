import 'package:flutter/material.dart';




class RewardsTitleBlock extends StatelessWidget {
  const RewardsTitleBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height:40,
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(10)
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Rewards',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                  fontSize: 20,color: Colors.black87
              ),),
            Text('Leads',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,color: Colors.black87
              ),),
          ],
        ),
    );
  }
}
