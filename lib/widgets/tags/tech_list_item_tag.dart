import 'package:flutter/material.dart';

class TechListItemWidget extends StatelessWidget {
  final String technology;
  const TechListItemWidget({
    Key? key,
    required this.technology,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(right: 15),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
      ),
      child: Text(
        technology,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}
