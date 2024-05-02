import 'package:flutter/material.dart';
import 'package:voyage_vue/models/popular_item_model.dart';
import 'package:voyage_vue/views/widgets/dots_indicator.dart';
import 'package:voyage_vue/views/widgets/item.dart';

class PopularSection extends StatefulWidget {
  const PopularSection({super.key});

  @override
  State<PopularSection> createState() => _PopularSectionState();
}

class _PopularSectionState extends State<PopularSection> {
  final List<PopularItemModel> popularItems = [
    const PopularItemModel(
      image:
          'https://images.fineartamerica.com/images/artworkimages/mediumlarge/3/northern-nature-landscape-with-mountains-vector-marvin-solorzano.jpg',
      name: 'Northen Mountain',
      rate: 3.5,
    ),
    const PopularItemModel(
      image:
          'https://img.freepik.com/free-vector/natural-landscape-background-style_23-2148650337.jpg',
      name: 'Green Mountain',
      rate: 4,
    ),
    const PopularItemModel(
      image:
          'https://img.freepik.com/free-vector/flat-design-winter-landscape-wallpaper_23-2148707347.jpg?size=626&ext=jpg&ga=GA1.1.1224184972.1713571200&semt=ais',
      name: 'HimaaaaMoUN',
      rate: 3.5,
    ),
    const PopularItemModel(
      image:
          'https://www.freevector.com/uploads/vector/preview/29665/Mountains-Area.jpg',
      name: 'ManaR AREA',
      rate: 5,
    ),
  ];

  int currentPageIndex = 0;
  late ScrollController scrollController;

  @override
  void initState() {
    scrollController = ScrollController();
    scrollController.addListener(() {
      final itemWidth = MediaQuery.of(context).size.width * 0.9;
      final index = (scrollController.offset / itemWidth).round();

      if (currentPageIndex != index) {
        setState(() {
          currentPageIndex = index;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.34,
            child: ListView.builder(
                // physics: const NeverScrollableScrollPhysics(),
                controller: scrollController,
                itemCount: popularItems.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: PopularItem(
                      popularItemModel: popularItems[index],
                      aspectRatio: 1.1,
                    ),
                  );
                }),
          ),
          const SizedBox(height: 20),
          DotsIndicator(
            currentPageIndex: currentPageIndex,
            length: popularItems.length,
          ),
        ],
      ),
    );
  }
}
