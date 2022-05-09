import 'dart:developer';

import 'package:flutter/material.dart';

import '../tags/year_tag.dart';

import 'package:portfolio_shubhank/models/project.dart';
import 'package:portfolio_shubhank/pages/project/project_details.dart';

class ProjectCard extends StatelessWidget {
  // Card Params
  final Project project;

  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        log("Project Card ${project.name} Tapped!");
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (builder) => ProjectDetail(project: project),
          ),
        );
      },
      child: Container(
        height: 350,
        width: MediaQuery.of(context).size.width / 1.3,
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.only(top: 15, bottom: 25, right: 25),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(5, 15),
              blurRadius: 20.0,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  project.name,
                  style: const TextStyle(fontSize: 22),
                ),
                YearTag(year: project.year),
              ],
            ),
            const SizedBox(height: 15),
            Expanded(
              child: Center(
                child: ClipRRect(
                  child: Image.network(project.imgUrl, fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              project.desc,
              maxLines: 3,
              style: const TextStyle(overflow: TextOverflow.ellipsis),
            ),
          ],
        ),
      ),
    );
  }
}
