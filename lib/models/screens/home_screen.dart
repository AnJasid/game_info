import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/BG.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: const Center(
          child: Text('Proceed'),
        ),
      ),
    );
  }
}
