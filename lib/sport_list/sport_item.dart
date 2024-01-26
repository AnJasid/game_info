import 'package:flutter/material.dart';
import 'package:game_info/models/sport.dart';

class SportItem extends StatelessWidget {
  const SportItem({
    super.key,
    required this.sport,
  });

  final Sport sport;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(sport.title),
      subtitle: Text(sport.text),
    );
  }
}
