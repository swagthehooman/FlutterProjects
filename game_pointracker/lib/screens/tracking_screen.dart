import 'package:flutter/material.dart';
import '../widgets/player_card.dart';
import '../widgets/round_stats.dart';
import '../widgets/round_increment.dart';
import '../widgets/add_score_dialog.dart';

class TrackingScreen extends StatefulWidget {
  final List _players;
  TrackingScreen(this._players);

  @override
  _TrackingScreenState createState() => _TrackingScreenState();
}

class _TrackingScreenState extends State<TrackingScreen> {
  final listColor = const Color(0xffA084DC);
  final backColor = const Color(0xffBFACE2);

  late List players;

  void initState() {
    super.initState();
    players = widget._players;
  }

  //round number
  var round = 0;

  final _textControls = TextEditingController();

  //function for score manipulation to list.
  void done(int i) {
    int x = int.parse(_textControls.text);
    _textControls.clear();
    setState(() {
      players[i][1] += x;
    });
    Navigator.of(context).pop();
  }

//increments the round by one
  void increments() {
    setState(() {
      round += 1;
    });
  }

  //build dialog box for score addition
  void addScore(int i) {
    // print('execution of $index');
    showDialog(
        context: context,
        builder: (context) => AddScoreDialog(
              name: players[i][0],
              score: players[i][1],
              controls: _textControls,
              done: () => done(i),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backColor,
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Round stat container to show which round is going on
            RoundStats("Round: $round"),

            //player card
            Expanded(
              child: ListView.builder(
                  itemCount: players.length,
                  itemBuilder: (context, index) => PlayerCard(
                      name: players[index][0],
                      score: players[index][1],
                      addScore: () => addScore(index))),
            ),

            //button for round increments
            RoundIncrement(increments),
            const SizedBox(
              height: 12,
            )
          ],
        ));
  }
}
