import 'package:flutter/material.dart';



class ButtonWithIconBlock extends StatelessWidget {
  const ButtonWithIconBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 105,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.indigo.shade900,
            borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1.5,color: Colors.white)
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.arrow_back_ios,color: Colors.white,size: 20,),
          Text('Back',
          style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
        ],

      ),
    );
  }
}
