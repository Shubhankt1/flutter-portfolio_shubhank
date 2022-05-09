import 'package:flutter/material.dart';

class IntroCard extends StatelessWidget {
  final String text;
  const IntroCard({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(25),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.black,
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 15),
            blurRadius: 25,
          ),
        ],
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }
}
