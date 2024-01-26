import 'package:flutter/material.dart';
import 'package:game_info/sport_list/sport_data.dart';
import 'package:game_info/sport_list/sport_item.dart';

class SportList extends StatelessWidget {
  const SportList({super.key});

  @override
  Widget build(BuildContext context) {
    SportData sportData = SportData();
    return ListView.builder(
      itemCount: sportData.sportList.length,
      itemBuilder: (BuildContext context, index) =>
          SportItem(sport: sportData.sportList[index]),
    );
  }
}
