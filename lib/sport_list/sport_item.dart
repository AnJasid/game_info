import 'package:flutter/material.dart';
import 'package:game_info/models/sport.dart';
import 'package:game_info/screens/info_screen.dart';

class SportItem extends StatelessWidget {
  const SportItem({
    super.key,
    required this.sport,
  });

  final Sport sport;

  void _goToInfoScreen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => InfoScreen(sportInfo: sport),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: GestureDetector(
        onTap: () {
          _goToInfoScreen(context);
        },
        child: Container(
          height: 200,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
