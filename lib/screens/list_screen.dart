import 'package:flutter/material.dart';
import 'package:game_info/sport_list/sport_list.dart';
import 'package:game_info/widgets/main_drawer.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Screen'),
      ),
      drawer: const MainDrawer(),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey[300],
        ),
        child: const Padding(
          padding: EdgeInsets.all(8),
          child: SportList(),
        ),
      ),
    );
  }
}
