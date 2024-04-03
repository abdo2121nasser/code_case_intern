import 'package:code_case_intern/core/constants/image_constants.dart';
import 'package:flutter/material.dart';



class UserBlock extends StatelessWidget {
  const UserBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
           Container(
             decoration: BoxDecoration(
                 shape: BoxShape.circle,
                 border: Border.all(
               color: Colors.white,width: 3.5
             )),
             child: CircleAvatar(
               radius: 50,
                 backgroundImage: Image.asset(ImageConst.kSmileManImage).image),
           ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Lalit kondekar',
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                Text('user id: 212102366',
                  style: TextStyle(color: Colors.white,fontSize:15),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
