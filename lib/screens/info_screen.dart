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
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 20,
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.amber,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(15),
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    colors: [
                      Color(0xff008080),
                      Color(0xff1A4B4B),
                    ],
                  ),
                ),
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        width: 260,
                        height: 150,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Name',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.all(15),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black.withOpacity(0.01),
                  border: Border.all(
                    color: Colors.amber,
                    width: 1.0,
                  ),
                ),
                child: const Text(''),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Back'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
