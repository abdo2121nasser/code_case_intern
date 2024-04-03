import 'package:code_case_intern/core/constants/image_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class RewardListBlock extends StatelessWidget {
  const RewardListBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
         height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(ImageConst.kTravelImage,height: 80,)),
          const Text('iphone/ ipad',
            style: TextStyle(
              fontWeight: FontWeight.bold,
                fontSize: 17,color: Colors.black87
            ),),
          const SizedBox(
            width: 50,height: 50,
            child: Row(
              children: [
                Icon(Icons.person,size: 19,),
                Text('100',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,color: Colors.black87
                  ),),
              ],
            ),
          )
        ],
      ),
    );
  }
}
