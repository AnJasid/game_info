import 'package:flutter/material.dart';
import 'package:game_info/sport_list/sport_data.dart';
import 'package:game_info/utils/button_utils.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppAbout aboutApp = AppAbout();
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'About',
            style: TextStyle(fontSize: 25),
          ),
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.all(8),
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.amber,
                width: 1.5,
              ),
            ),
            child: Text(
              aboutApp.appInfo.toString(),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 30),
          ButtonUtils(
            onTap: () => Navigator.pop(context),
            buttonText: 'Back',
          ),
        ],
      ),
    );
  }
}
