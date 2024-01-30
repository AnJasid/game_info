import 'package:flutter/material.dart';
import 'package:game_info/models/sport.dart';
import 'package:game_info/provider/theme_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class InfoScreen extends ConsumerWidget {
  const InfoScreen({
    super.key,
    required this.sportInfo,
  });

  final Sport sportInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLightTheme = ref.watch(themeProvider);
    return Scaffold(
      backgroundColor:
          isLightTheme ? const Color(0xff206464) : const Color(0xff001f3f),
      appBar: AppBar(
        backgroundColor:
            isLightTheme ? const Color(0xff206464) : const Color(0xff001f3f),
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
        decoration: BoxDecoration(
          color: isLightTheme ? Colors.white : Colors.black45,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Center(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
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
                        child: Image.asset(sportInfo.imagePath),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        sportInfo.playerName,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.all(15),
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black.withOpacity(0.03),
                  border: Border.all(
                    color: Colors.amber,
                    width: 1.5,
                  ),
                ),
                child: SingleChildScrollView(
                  child: SizedBox(
                    child: Text(sportInfo.playerInfo),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).pop(),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: const Text(
          'Okay',
        ),
      ),
    );
  }
}
