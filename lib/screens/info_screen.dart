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
    return Scaffold(
      backgroundColor: const Color(0xff206464),
      appBar: AppBar(
        backgroundColor: const Color(0xff206464),
        title: const Text(
          'Info Screen',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
      ),
    );
  }
}
