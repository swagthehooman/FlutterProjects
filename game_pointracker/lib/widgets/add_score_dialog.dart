import 'package:flutter/material.dart';

class AddScoreDialog extends StatelessWidget {
  final String name;
  final int score;
  final controls;
  Function() done;

  AddScoreDialog(
      {required this.name,
      required this.score,
      required this.controls,
      required this.done});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color(0xffA084DC),
      content: SizedBox(
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //display player name
            Text(
              name,
              style: const TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),

            //display score of the player
            Text(
              "Current score= $score",
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),

            //TextField input for score to add
            TextField(
              cursorColor: Colors.black,
              controller: controls,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  hintText: "Name",
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
            ),
            const SizedBox(
              height: 12,
            ),
            //Done button
            ElevatedButton(
              onPressed: done,
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
