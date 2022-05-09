import 'package:flutter/material.dart';

import 'package:portfolio_shubhank/widgets/tags/tech_list_item_tag.dart';

class HorizontalTechView extends StatelessWidget {
  final List<String> techList;
  const HorizontalTechView({
    Key? key,
    required this.techList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return SizedBox(
      height: screenSize.height * 0.06,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: techList.length,
        itemBuilder: (BuildContext context, int index) {
          return TechListItemWidget(technology: techList[index]);
        },
      ),
    );
  }
}
