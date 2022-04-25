import 'package:flutter/material.dart';
import 'package:flutter_skill_development/constants.dart';
import 'package:flutter_skill_development/screens/home/components/featured_plants.dart';
import 'package:flutter_skill_development/screens/home/components/recomend_plants.dart';
import 'package:flutter_skill_development/screens/home/components/title_with_more_btn.dart';
import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // It will provide us total height and width of our screen
    Size size = MediaQuery.of(context).size;
    // It enables scrolling in small devices
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recomended", press: () {}),
          const RecomendsPlants(),
          TitleWithMoreBtn(title: "Featured Plants", press: () {}),
          const FeaturedPlants(),
          const SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
