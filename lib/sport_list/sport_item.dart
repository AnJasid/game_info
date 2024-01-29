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
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 25),
      child: GestureDetector(
        onTap: () {
          _goToInfoScreen(context);
        },
        child: Container(
          height: 200,
          decoration: BoxDecoration(
            // gradient: const LinearGradient(
            //   begin: Alignment.topLeft,
            //   end: Alignment.topRight,
            //   colors: [
            //     Color(0xffF5B7B1),
            //     Color(0xffE7D3D3),
            //   ],
            // ),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: Colors.white,
              width: 2.0,
            ),
          ),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  sport.imagePath,
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
          // child: Center(
          //   child: Container(
          //     width: 150,
          //     height: 150,
          //     child: Image.asset(sport.imagePath),
          //   ),
          // ),
        ),
      ),
    );
  }
}
