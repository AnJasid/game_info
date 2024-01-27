import 'package:flutter/material.dart';
import 'package:game_info/models/sport.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({
    super.key,
    required this.sportInfo,
  });

  final Sport sportInfo;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(sportInfo.title),
        Text(sportInfo.text),
      ],
    );
  }
}
