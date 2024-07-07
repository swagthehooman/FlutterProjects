import 'package:flutter/material.dart';

class RoundIncrement extends StatelessWidget {
  VoidCallback increments; //function pointer which increases the round number

  RoundIncrement(this.increments);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      //actions
      onPressed: increments,

      //styling
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(12),
        backgroundColor: const Color(0xffA084DC),
      ),

      //display action text
      child: const Text(
        "Next Round",
        style: TextStyle(
            fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}
