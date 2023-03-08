import 'package:flutter/material.dart';
import 'package:flutter_skill_development/constants.dart';

class BottonButtons extends StatelessWidget {
  const BottonButtons({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: size.width / 2,
          height: 84,
          child: TextButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                  ),
                ),
              ),
              overlayColor: MaterialStateProperty.all(kPrimaryColor),
            ),
            onPressed: () {},
            child: const Text(
              "Buy Now",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {},
            child: const Text("Description"),
          ),
        ),
      ],
    );
  }
}
