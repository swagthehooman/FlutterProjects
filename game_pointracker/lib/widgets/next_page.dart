import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  final Function() nextPage;
  NextPage(this.nextPage);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
      child: ElevatedButton(
          //styling
          style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 14),
              backgroundColor: const Color(0xffA084DC),
              padding: const EdgeInsets.all(12)),

          //function to be executed
          onPressed: nextPage,

          //icon
          child: const Text(
            'Begin',
            style: TextStyle(
                fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),
          )),
    );
  }
}
