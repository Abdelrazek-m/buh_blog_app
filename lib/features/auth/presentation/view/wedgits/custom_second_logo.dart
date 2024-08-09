import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomSecondLogo extends StatelessWidget {
  const CustomSecondLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.1/1.6,
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
          image:Image.asset(AssetsData.secondLogo).image
        )),
      ),
    );
  }
}