import 'package:flutter/material.dart';
import 'package:voyage_vue/core/utils/styles.dart';
import 'package:voyage_vue/models/tab_bar_model.dart';
import 'package:voyage_vue/views/widgets/popular_section.dart';

class MainTabBar extends StatefulWidget {
  const MainTabBar({
    super.key,
  });

  @override
  State<MainTabBar> createState() => _MainTabBarState();
}

class _MainTabBarState extends State<MainTabBar> with TickerProviderStateMixin {
  final List<TabBarModel> tabs = [
    const TabBarModel(tab: Tab(text: 'Popular'), screen: PopularSection()),
    TabBarModel(
        tab: const Tab(text: 'Featured'), screen: Container(color: Colors.red)),
    TabBarModel(tab: const Tab(text: 'Most Visited'), screen: Container()),
    const TabBarModel(
        tab: Tab(text: 'Europe'), screen: Center(child: Text('Europe'))),
    TabBarModel(tab: const Tab(text: 'Africa'), screen: Container()),
    TabBarModel(tab: const Tab(text: 'Asia'), screen: Container()),
    TabBarModel(tab: const Tab(text: 'Mountains'), screen: Container()),
    TabBarModel(tab: const Tab(text: 'Oceans'), screen: Container()),
  ];
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 8, vsync: this);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TabBar(
            dividerHeight: 0,
            indicator: const BoxDecoration(),
            labelColor: AppStyles.primaryColor,
            labelStyle: const TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: 'Montserrat',
                fontSize: 12),
            tabAlignment: TabAlignment.start,
            labelPadding: const EdgeInsets.symmetric(horizontal: 14.0),
            isScrollable: true,
            controller: tabController,
            tabs: tabs.map((e) => e.tab).toList()),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.40,
          child: TabBarView(
              controller: tabController,
              children: tabs.map((e) => e.screen).toList()),
        ),

        // SizedBox(
        //   height: MediaQuery.sizeOf(context).height * 0.37,
        //   width: MediaQuery.sizeOf(context).width * 0.85,
        //   child: Padding(
        //     padding: const EdgeInsets.only(left: 16.0, top: 10),
        //     child: TabBarView(
        //         controller: tabController,
        //         children: tabs.map((e) => e.screen).toList()),
        //   ),
        // ),
      ],
    );
  }
}
