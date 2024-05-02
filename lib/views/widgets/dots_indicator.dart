import 'package:flutter/material.dart';
import 'package:voyage_vue/views/widgets/custom_dot.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator(
      {super.key, required this.currentPageIndex, required this.length});

  final int currentPageIndex;
  final int length;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        length,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 6),
          child: CustomDotIndicator(isActive: index == currentPageIndex),
        ),
      ),
    );
  }
}
