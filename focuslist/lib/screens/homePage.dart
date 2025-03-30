import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe4ebf1),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "FocusList",
            style: GoogleFonts.averiaSansLibre(),
            textAlign: TextAlign.center,
          ),
          Image.asset('assets/images/LoginPageImage.jpg'),
          const Text(
            'Manage your day, efficiently',
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: () => {},
            child: const Text(
              'Signup',
              textAlign: TextAlign.center,
            ),
          ),
          const Text(
            'Create an account',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
