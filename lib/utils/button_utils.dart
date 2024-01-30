import 'package:flutter/material.dart';

class ButtonUtils extends StatelessWidget {
  const ButtonUtils({
    super.key,
    required this.buttonText,
    required this.onTap,
  });

  final String buttonText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45,
        width: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xffD0E9F5),
              Color(0xffA9CCE3),
            ],
          ),
        ),
        child: Center(
          child: Text(buttonText),
        ),
      ),
    );
  }
}
