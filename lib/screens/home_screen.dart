import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:game_info/provider/theme_provider.dart';
import 'package:game_info/screens/list_screen.dart';
import 'package:game_info/utils/button_utils.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
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
  Widget build(BuildContext context, WidgetRef ref) {
    final isLightTheme = ref.watch(themeProvider);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor:
            isLightTheme ? const Color(0xff206464) : const Color(0xff001f3f),
      ),
      body: Container(
        decoration: BoxDecoration(
          color:
              isLightTheme ? const Color(0xff206464) : const Color(0xff001f3f),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonUtils(
                onTap: () => _goToListScreen(context),
                buttonText: 'Start',
              ),
              const SizedBox(height: 10),
              ButtonUtils(
                onTap: _exitApp,
                buttonText: 'Exit',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
