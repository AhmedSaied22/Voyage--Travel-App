import 'package:flutter/material.dart';
import 'package:voyage_vue/views/widgets/custom_home_app_bar.dart';
import 'package:voyage_vue/views/widgets/main_tab_bar.dart';
import 'package:voyage_vue/views/widgets/recommended_section_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: NestedScrollView(
              physics: const BouncingScrollPhysics(),
              headerSliverBuilder: (context, innerBoxIsScrolled) => [
                const SliverToBoxAdapter(
                  child: Column(
                    children: [
                      CustomHomeAppBar(),
                      MainTabBar(),
                    ],
                  ),
                ),
              ],
              body: const RecommendedSectionBody(),
            )),
      ),
    );
  }
}
