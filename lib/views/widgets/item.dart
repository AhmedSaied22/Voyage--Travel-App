import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:voyage_vue/core/utils/function/route.dart';
import 'package:voyage_vue/core/utils/styles.dart';
import 'package:voyage_vue/models/popular_item_model.dart';
import 'package:voyage_vue/views/details_view.dart';

class PopularItem extends StatefulWidget {
  const PopularItem(
      {super.key,
      required this.popularItemModel,
      required this.aspectRatio,
      this.isRecommended = false,
      this.fontandIconSize});

  final PopularItemModel popularItemModel;
  final double aspectRatio;
  final double? fontandIconSize;
  final bool isRecommended;
  @override
  State<PopularItem> createState() => _PopularItemState();
}

class _PopularItemState extends State<PopularItem> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    String itemName = widget.isRecommended
        ? widget.popularItemModel.name
        : widget.popularItemModel.name;

    List<String> words = itemName.split(' ');
    if (words.length == 2 && widget.isRecommended) {
      itemName = '${words[0]}\n${words[1]}';
    }
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            createRoute(
                screen: DetailsView(
              popularItemsModel: widget.popularItemModel,
            )));
      },
      child: Stack(
        children: [
          AspectRatio(
            aspectRatio: widget.aspectRatio,
            child: Container(
              decoration: ShapeDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image:
                      CachedNetworkImageProvider(widget.popularItemModel.image),
                ),
                color: const Color(0xFF4EB7F2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          ),
          Positioned(
            left: 16,
            bottom: 12,
            right: 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(itemName,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: AppStyles.styleAskanSemiBold24(context)
                              .copyWith(
                                  fontSize: widget.fontandIconSize ?? 20,
                                  color: widget.isRecommended
                                      ? Colors.white
                                      : Colors.black)),
                    ),
                    IconButton(
                      icon: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: widget.fontandIconSize == null ? 15 : 12,
                        child: Icon(
                          Icons.favorite,
                          size: widget.fontandIconSize ?? 16,
                          color: isFavorite
                              ? const Color(0xffff54a0)
                              : Colors.black,
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          isFavorite = !isFavorite;
                        });
                      },
                    ),
                  ],
                ),
                Text(widget.popularItemModel.rate.toString(),
                    style: AppStyles.styleAskanSemiBold24(context).copyWith(
                        color: widget.isRecommended
                            ? Colors.white
                            : Colors.black)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
