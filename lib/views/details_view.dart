import 'package:flutter/material.dart';
import 'package:voyage_vue/models/popular_item_model.dart';
import 'package:voyage_vue/views/widgets/details_view_body.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, required this.popularItemsModel});

  // final String image;
  final PopularItemModel popularItemsModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailsViewBody(popularItemsModel: popularItemsModel),
    );
  }
}
