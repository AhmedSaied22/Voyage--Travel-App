import 'package:flutter/material.dart';
import 'package:voyage_vue/core/utils/app_images.dart';
import 'package:voyage_vue/views/widgets/splash_body_section.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width * 1;
    var height = MediaQuery.sizeOf(context).height * 0.57;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 12),
            AspectRatio(
              aspectRatio: width / height,
              child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            AppImages.splashImage,
                          )))),
            ),
            const SizedBox(height: 24),
            const SplashBodySection(),
          ],
        ),
      ),
    );
  }
}
