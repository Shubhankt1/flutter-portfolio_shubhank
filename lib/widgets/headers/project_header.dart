import 'package:flutter/material.dart';

import '../tags/year_tag.dart';
import '../../models/project.dart';

class ProjectHeader extends StatelessWidget {
  const ProjectHeader({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        BackButton(onPressed: () => Navigator.pop(context)),
        Expanded(
          child: Text(
            project.name,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        YearTag(year: project.year),
      ],
    );
  }
}
