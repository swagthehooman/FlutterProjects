import 'package:flutter/material.dart';

class RoundStats extends StatelessWidget {
  final String round;

  RoundStats(this.round);

  @override
  Widget build(BuildContext context) {
    return Container(
      //styling
      decoration: const BoxDecoration(
        color: Color(0xffA084DC),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(top: 50, bottom: 20),

      //display round stats
      child: Text(round,
          style: const TextStyle(
              backgroundColor: Color(0xffA084DC),
              fontSize: 28,
              color: Colors.black,
              fontWeight: FontWeight.bold)),
    );
  }
}
