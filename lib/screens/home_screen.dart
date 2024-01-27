import 'package:flutter/material.dart';
import 'package:game_info/screens/list_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _goToListScreen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => const ListScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: const BoxDecoration(
            // image: DecorationImage(
            //   image: AssetImage('assets/BG.png'),
            //   fit: BoxFit.cover,
            // ),
            ),
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              _goToListScreen(context);
            },
            child: const Text('Proceed'),
          ),
        ),
      ),
    );
  }
}
