import 'package:flutter/material.dart';

class FlagContainer extends StatelessWidget {
  const FlagContainer({required this.flagImage, super.key});
  final ImageProvider flagImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.tight(const Size(200, 200)
      ),
      decoration: BoxDecoration(
        image: DecorationImage(image: flagImage, fit: BoxFit.fill)
      ),
    );
  }
}