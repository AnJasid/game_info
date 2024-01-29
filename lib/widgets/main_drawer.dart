import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:game_info/provider/theme_provider.dart';
import 'package:game_info/screens/about_screen.dart';
import 'package:game_info/screens/home_screen.dart';

class MainDrawer extends ConsumerWidget {
  const MainDrawer({super.key});

  void _goToHomeScreen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => const HomeScreen(),
      ),
    );
  }

  void _goToAboutScreen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => const AboutScreen(),
      ),
    );
  }

  void showAboutScreen(BuildContext context) {
    showModalBottomSheet(
      useSafeArea: true,
      isScrollControlled: true,
      context: context,
      builder: (ctx) => const AboutScreen(),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLightTheme = ref.watch(themeProvider);
    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color(0xff206464),
            ),
            child: Row(
              children: [
                // Icon(
                //   Icons.home,
                //   size: 48,
                //   color: Colors.black,
                // ),
                SizedBox(width: 18),
                Text(
                  '',
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.home,
              size: 25,
              color: Colors.black,
            ),
            title: const Text(
              'HOME',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            onTap: () {
              _goToHomeScreen(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.info,
              size: 25,
              color: Colors.black,
            ),
            title: const Text(
              'ABOUT',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            onTap: () {
              showAboutScreen(context);
            },
          ),
          Switch(
            value: isLightTheme,
            onChanged: (value) =>
                ref.read(themeProvider.notifier).state = value,
          )
        ],
      ),
    );
  }
}
