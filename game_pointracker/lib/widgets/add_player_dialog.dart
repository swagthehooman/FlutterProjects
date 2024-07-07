import 'package:flutter/material.dart';

class AddPlayerDialog extends StatelessWidget {
  final controls;
  Function() addPlayer;

  AddPlayerDialog({required this.controls, required this.addPlayer});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color(0xffA084DC),
      content: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //Input line for name of player input
            TextField(
              cursorColor: Colors.black,
              decoration: const InputDecoration(
                  hintText: "Name",
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
              controller: controls,
              keyboardType: TextInputType.name,
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: addPlayer,
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffBFACE2)),
              child: const Text(
                'Done',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
