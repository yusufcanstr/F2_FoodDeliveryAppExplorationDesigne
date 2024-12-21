import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
    required this.imageName,
    required this.imageClassName,
    required this.type,
  });
  final String imageName;
  final String imageClassName;
  final String type;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _newNamePath,
      fit: BoxFit.cover,
    );
  }

  String get _newNamePath => "assets/$imageClassName/$imageName.$type";
}
