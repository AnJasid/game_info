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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        height: 200,
        width: 200,
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
      ),
    );
  }
}
