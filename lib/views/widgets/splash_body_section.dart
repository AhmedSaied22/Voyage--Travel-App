import 'package:voyage_vue/core/utils/function/route.dart';
import 'package:voyage_vue/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:voyage_vue/core/widgets/custom_button.dart';
import 'package:voyage_vue/views/widgets/navigation_menu.dart';

class SplashBodySection extends StatelessWidget {
  const SplashBodySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Winter \nVacation Trips',
            style: AppStyles.styleAskanSemiBold36(context),
          ),
          const SizedBox(height: 24),
          Text(
            'Enjoy your winter vacations with warmth and amazing sightseeing on the mountains.\nEnjoy with us!',
            style: AppStyles.styleRegular16(context),
          ),
          const SizedBox(height: 24),
          CustomButton(
            onPressed: () {
              Navigator.push(
                  context, createRoute(screen: const NavigationMenu()));
            },
            child: Text(
              'Let\'s Go!  ➞',
              style: AppStyles.styleRegular16(context).copyWith(
                color: Colors.white,
                letterSpacing: 1.3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
