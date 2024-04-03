import 'package:flutter/material.dart';



class AppBarChargesBlock extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      width: 80,height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 30,height: 30,
              decoration: const BoxDecoration(
                  color: Colors.yellowAccent,
                  shape: BoxShape.circle),
              child: Icon(Icons.museum_rounded,color: Colors.yellow.shade800,)),
          const Text('99',
          style: TextStyle(
            fontSize: 20,color: Colors.black87
          ),)
        ],
      ),
    );
  }
}
