import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:voyage_vue/models/popular_item_model.dart';
import 'package:voyage_vue/views/widgets/details_view_body_section.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({
    super.key,
    required this.popularItemsModel,
  });

  final PopularItemModel popularItemsModel;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width * 1;
    var height = MediaQuery.sizeOf(context).height * 0.57;

    return Stack(
      children: [
        AspectRatio(
          aspectRatio: width / height,
          child: CachedNetworkImage(
            imageUrl: popularItemsModel.image,
            fit: BoxFit.cover,
          ),
        ),
        DetailsViewBodySection(popularItemsModel: popularItemsModel),
        IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back)),
      ],
    );
  }
}
