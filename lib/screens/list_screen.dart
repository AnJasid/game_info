import 'package:flutter/material.dart';
import 'package:game_info/sport_list/sport_list.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Screen'),
      ),
      body: const SportList(),
    );
  }
}
