import 'package:flutter/material.dart';

class LoginButtons extends StatelessWidget {

  final Function() onPressed;
  final String text;
  final Icon icon;

  const LoginButtons({required this.onPressed, required this.text, required this.icon});


  @override
  Widget build(BuildContext context){
    return ElevatedButton(onPressed: onPressed,
    style: ElevatedButton.styleFrom(),
      child: Row(
        spacing: 7,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          Text(
            text,
            textAlign: TextAlign.center,
          )
        ],
    ),
    );
  }
}