import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x00e4ebf1),
      body: Expanded(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "FocusList",
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
      )),
    );
  }
}
