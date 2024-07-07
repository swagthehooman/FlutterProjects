import 'package:flutter/material.dart';

class PlayerList extends StatelessWidget {
  final String name;
  PlayerList({required this.name});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, left: 12, right: 12, bottom: 0),
      child: ListTile(
        //ontap action

        //styling
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        tileColor: const Color(0xffA084DC),
        contentPadding: const EdgeInsets.all(12),

        //name display widget
        title: Text(
          name,
          style: const TextStyle(
              fontSize: 28, color: Colors.black, fontWeight: FontWeight.bold),
        ),

        //Score display widget
        trailing: const Text(
          "0",
          style: TextStyle(
              fontSize: 26, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
