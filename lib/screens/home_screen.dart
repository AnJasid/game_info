import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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

  // to exit on the app
  void _exitApp() {
    SystemNavigator.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Container(
        decoration: const BoxDecoration(
            // image: DecorationImage(
            //   image: AssetImage('assets/BG.png'),
            //   fit: BoxFit.cover,
            // ),
            ),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                _goToListScreen(context);
              },
              child: const Text('Start'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _exitApp,
              child: const Text('Exit'),
            ),
          ],
        )),
      ),
    );
  }
}
