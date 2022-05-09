import 'package:flutter/material.dart';

class YearTag extends StatelessWidget {
  const YearTag({
    Key? key,
    required this.year,
  }) : super(key: key);

  final int year;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        year.toString(),
        style: const TextStyle(color: Colors.white),
      ),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(25),
      ),
    );
  }
}
