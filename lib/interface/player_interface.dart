import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'dart:async' as async;
import 'package:pacman/dot/dot.dart';

class PlayerInterface extends StatefulWidget {
  final BonfireGame game;
  static const overlayKey = 'playerInterface';
  const PlayerInterface({Key? key, required this.game}) : super(key: key);

  @override
  State<PlayerInterface> createState() => _PlayerInterfaceState();
}

class _PlayerInterfaceState extends State<PlayerInterface> {
  late async.Timer _lifeTimer;
  int score = 0;

  get scored => Dot.deathScore;

  @override
  void initState() {
    _lifeTimer =
        async.Timer.periodic(const Duration(milliseconds: 1), _verifyScore);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text(
        'Score: $score',
        style: const TextStyle(
          inherit: false,
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
  void _verifyScore(async.Timer timer) {
    if (scored == Dot.deathScore){
      //print(score);
      setState(() {
        score = scored;
      });
    }
  }
}
