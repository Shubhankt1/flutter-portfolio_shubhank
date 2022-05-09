import 'dart:developer';

import 'package:flutter/material.dart';

import '../widgets/headers/header.dart';
import 'package:portfolio_shubhank/example/projects.dart';
import 'package:portfolio_shubhank/widgets/cards/project_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          log("FAB Pressed");
        },
        child: const Icon(
          Icons.share,
          size: 28,
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const MainHeader(),
                  const SizedBox(height: 25),
                  const Text(
                    "Projects",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    // height: MediaQuery.of(context).size.height,
                    height: 350,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: projects.length,
                      itemBuilder: (BuildContext context, int index) =>
                          ProjectCard(
                        project: projects[index],
                      ),
                    ),
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
