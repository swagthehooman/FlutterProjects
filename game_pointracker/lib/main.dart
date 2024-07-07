import 'package:flutter/material.dart';
import './screens/tracking_screen.dart';
import './screens/player_add_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PoinTracker',
      home: PlayerAddScreen(),
    );
  }
}
