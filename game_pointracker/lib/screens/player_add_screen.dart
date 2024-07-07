import 'package:flutter/material.dart';
import '../widgets/round_stats.dart';
import '../widgets/add_player_dialog.dart';
import '../widgets/player_list.dart';
import '../widgets/add_button.dart';
import '../widgets/next_page.dart';
import '../screens/tracking_screen.dart';

class PlayerAddScreen extends StatefulWidget {
  const PlayerAddScreen({Key? key}) : super(key: key);

  @override
  _PlayerAddScreenState createState() => _PlayerAddScreenState();
}

class _PlayerAddScreenState extends State<PlayerAddScreen> {
  List _players = [];
  final _textControls = TextEditingController();

  final listColor = const Color(0xffA084DC);
  final backColor = const Color(0xffBFACE2);

  void navigateToNext() {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (builder) => TrackingScreen(_players)));
  }

  void addPlayer() {
    setState(() {
      _players.add([_textControls.text, 0]);
      _textControls.clear();
    });
    Navigator.of(context).pop();
  }

  void addPlayersBox() {
    showDialog(
        context: context,
        builder: (context) => AddPlayerDialog(
              controls: _textControls,
              addPlayer: addPlayer,
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      body: Column(children: [
        RoundStats('Players'),
        Expanded(
          child: Container(
            child: ListView.builder(
                itemCount: _players.length,
                itemBuilder: (context, index) =>
                    PlayerList(name: _players[index][0])),
          ),
        ),
        AddButton(addPlayersBox),
        NextPage(navigateToNext)
      ]),
    );
  }
}
