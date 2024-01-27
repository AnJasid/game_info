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
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            sportInfo.title,
            style: const TextStyle(fontSize: 15),
          ),
          Text(
            sportInfo.text,
            style: const TextStyle(fontSize: 15),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Back'),
          ),
        ],
      ),
    );
  }
}
