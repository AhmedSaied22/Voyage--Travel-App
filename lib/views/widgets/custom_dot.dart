import 'package:flutter/material.dart';
import 'package:voyage_vue/core/utils/styles.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.isActive});

  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: isActive ? 28 : 6,
      height: 8,
      decoration: ShapeDecoration(
        color: isActive ? AppStyles.primaryColor : AppStyles.secColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
