import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  final Function() addPlayersBox;
  AddButton(this.addPlayersBox);

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
        onPressed: addPlayersBox,

        //icon
        child: const Icon(Icons.add, color: Colors.black, size: 30),
      ),
    );
  }
}
