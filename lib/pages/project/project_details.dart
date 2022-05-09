import 'package:flutter/material.dart';

import 'package:portfolio_shubhank/responsive.dart';
import 'package:portfolio_shubhank/models/project.dart';
import 'package:portfolio_shubhank/widgets/horizontal_tech_view.dart';
import 'package:portfolio_shubhank/widgets/headers/project_header.dart';

class ProjectDetail extends StatelessWidget {
  final Project project;
  const ProjectDetail({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: screenSize.width,
          height: screenSize.height,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProjectHeader(project: project),
                  const SizedBox(height: 25),
                  Hero(
                    tag: project.name,
                    child: Responsive(
                      mobile: Image.network(
                        project.imgUrl,
                        fit: BoxFit.cover,
                      ),
                      tablet: Image.network(
                        project.imgUrl,
                        fit: BoxFit.cover,
                      ),
                      desktop: SizedBox(
                        height: 350,
                        child: Image.network(
                          project.imgUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Technologies",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 15),
                      HorizontalTechView(techList: project.techs ?? []),
                      const SizedBox(height: 15),
                      const Text(
                        "Description",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Wrap(
                        children: [
                          Text(
                            project.desc,
                            style: const TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
