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
      // ignore: prefer_const_constructors
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 25,
      ),
      child: GestureDetector(
        onTap: () => _goToInfoScreen(context),
        child: Container(
          // height: 200,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: [
                Color(0xff008080),
                Color(0xff1A4B4B),
              ],
            ),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: Colors.amber,
              width: 1.5,
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                spreadRadius: 0,
                blurRadius: 8,
                offset: Offset(2, 3),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                Container(
                  width: 260,
                  height: 150,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Image.asset(sport.imagePath),
                ),
                const SizedBox(height: 5),
                Text(
                  sport.playerName,
                  style: const TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 5),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    'View Info',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
