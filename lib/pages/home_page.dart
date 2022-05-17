import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

import '../widgets/headers/header.dart';

import 'package:portfolio_shubhank/responsive.dart';
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
          Share.share(
              "Check out Shubhank's Portfolio App! https://portfolio-9cafc.web.app");
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
                  Responsive(
                    desktop: desktopBuilder(),
                    mobile: mobileTabletBuilder(350),
                    tablet: mobileTabletBuilder(450),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  SizedBox mobileTabletBuilder(double height) {
    return SizedBox(
      // height: MediaQuery.of(context).size.height,
      height: height,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: projects.length,
        itemBuilder: (BuildContext context, int index) => ProjectCard(
          project: projects[index],
        ),
      ),
    );
  }

  GridView desktopBuilder() {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 5.0,
        mainAxisSpacing: 5.0,
      ),
      itemCount: projects.length,
      itemBuilder: (BuildContext context, int index) => ProjectCard(
        project: projects[index],
      ),
    );
  }
}
