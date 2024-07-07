import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DialogBox extends StatefulWidget {
  final Function reset;
  final String text;
  DialogBox({required this.reset, required this.text});

  @override
  _DialogBoxState createState() => _DialogBoxState();
}

class _DialogBoxState extends State<DialogBox> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.grey.shade700,
      actions: [
        TextButton(
            onPressed: () {
              widget.reset();
              Navigator.of(context).pop();
            },
            child: Text(
              "Play Again?",
              style: GoogleFonts.pressStart2p(
                fontSize: 8,
                color: Colors.white,
              ),
            ))
      ],
      title: Text(
        widget.text,
        style: GoogleFonts.pressStart2p(
          fontSize: 12,
          color: Colors.white,
        ),
      ),
    );
  }
}
