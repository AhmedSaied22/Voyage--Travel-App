import 'package:flutter/material.dart';
import 'package:voyage_vue/core/utils/styles.dart';
import 'package:voyage_vue/models/popular_item_model.dart';
import 'package:voyage_vue/views/widgets/item.dart';

class RecommendedSectionBody extends StatefulWidget {
  const RecommendedSectionBody({
    super.key,
  });

  @override
  State<RecommendedSectionBody> createState() => _RecommendedSectionBodyState();
}

class _RecommendedSectionBodyState extends State<RecommendedSectionBody> {
  final items = getRecommendedItems();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Recommended', style: AppStyles.styleAskanBold20(context)),
              Text('View All', style: AppStyles.styleAskanBold20(context)),
            ],
          ),
        ),
        const SizedBox(height: 16),
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.only(left: 8, right: 4, bottom: 16),
            itemCount: items.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 14,
              crossAxisSpacing: 14,
            ),
            itemBuilder: (context, index) => PopularItem(
              popularItemModel: items[index],
              aspectRatio: 1,
              fontandIconSize: 16,
              isRecommended: true,
            ),
          ),
        ),
      ],
    );
  }
}
