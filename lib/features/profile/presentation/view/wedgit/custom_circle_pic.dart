import 'package:flutter/material.dart';

class CustomCirclePicture extends StatelessWidget {
  final double height;
  final double width;
  final double horizontal;
  final double vertical;
  final String picture;
    
  const CustomCirclePicture({
    super.key,
    required this.height,
    required this.width,
    required this.picture, required this.horizontal, required this.vertical,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:   EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
      height: height,
      width: width,
      child: CircleAvatar(
        backgroundImage: AssetImage(picture),
      ),
    );
  }
}
