import 'package:flutter/material.dart';




class SettingListBlock extends StatelessWidget {
    final  IconData icon;
    final String lable;
    SettingListBlock({required this.icon,required this.lable});

    @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          child: Row(
            children: [
              Icon(icon,size: 25,color: Colors.black87,),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(lable,
                  style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 20),),
              )
            ],
          ),
        ),
        Icon(Icons.arrow_forward_ios_outlined,size: 20,color: Colors.black87,)
      ],
    );
  }

}
