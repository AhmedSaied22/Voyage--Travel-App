import 'package:flutter/material.dart';
import 'package:voyage_vue/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.child,
    this.onPressed,
  });

  final Widget child;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppStyles.primaryColor,
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
