import 'package:flutter/material.dart';
import 'package:game_info/screens/home_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  void _goToHomeScreen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => const HomeScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.amber,
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
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
