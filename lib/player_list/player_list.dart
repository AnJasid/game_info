import 'package:flutter/material.dart';
import 'package:game_info/player_list/player_data.dart';
import 'package:game_info/player_list/player_item.dart';

class PlayerList extends StatelessWidget {
  const PlayerList({super.key});

  @override
  Widget build(BuildContext context) {
    PlayerData sportData = PlayerData();
    return ListView.builder(
      itemCount: sportData.sportList.length,
      itemBuilder: (BuildContext context, index) =>
          PlayerItem(sport: sportData.sportList[index]),
    );
  }
}
