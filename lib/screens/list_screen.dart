import 'package:flutter/material.dart';
import 'package:game_info/provider/theme_provider.dart';
import 'package:game_info/sport_list/sport_list.dart';
import 'package:game_info/widgets/main_drawer.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListScreen extends ConsumerWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLightTheme = ref.watch(themeProvider);
    return Scaffold(
      backgroundColor: const Color(0xff206464),
      appBar: AppBar(
        backgroundColor: const Color(0xff206464),
        title: const Text(
          'List Screen',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
      ),
      drawer: const MainDrawer(),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.all(8),
          child: SportList(),
        ),
      ),
    );
  }
}
