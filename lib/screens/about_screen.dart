import 'package:flutter/material.dart';
import 'package:game_info/utils/button_utils.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 150,
            decoration: BoxDecoration(
                border: Border.all(
              color: Colors.black,
              width: 2.0,
            )),
          ),
          ButtonUtils(
            onTap: () => Navigator.pop(context),
            buttonText: 'Back',
          ),
        ],
      ),
    );
  }
}
