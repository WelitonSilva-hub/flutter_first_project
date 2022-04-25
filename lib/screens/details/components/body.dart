import 'package:flutter/material.dart';
import 'package:flutter_skill_development/constants.dart';
import 'package:flutter_skill_development/screens/details/components/botton_buttons.dart';
import 'package:flutter_skill_development/screens/details/components/image_and_icons.dart';
import 'package:flutter_skill_development/screens/details/components/title_and_price.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(size: size),
          const TitleAndPrice(title: "Angelica", country: "Russia", price: 440),
          const SizedBox(
            height: kDefaultPadding,
          ),
          BottonButtons(size: size),
          const SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
