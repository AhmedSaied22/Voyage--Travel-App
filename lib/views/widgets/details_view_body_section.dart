import 'package:flutter/material.dart';
import 'package:voyage_vue/core/utils/styles.dart';
import 'package:voyage_vue/core/widgets/custom_button.dart';
import 'package:voyage_vue/models/popular_item_model.dart';
import 'package:voyage_vue/views/widgets/reservations_section.dart';

class DetailsViewBodySection extends StatelessWidget {
  const DetailsViewBodySection({
    super.key,
    required this.popularItemsModel,
  });

  final PopularItemModel popularItemsModel;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: MediaQuery.sizeOf(context).height * 0.60,
        width: double.maxFinite,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(34), topRight: Radius.circular(34)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 32, left: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(popularItemsModel.name,
                      style: AppStyles.styleAskanSemiBold28(context)),
                  Text('Japan, Egypt, Default',
                      style: AppStyles.styleRegular16(context)
                          .copyWith(fontSize: 12)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('✯✯✯✯✯',
                      style: TextStyle(color: Colors.amber, fontSize: 16)),
                  const SizedBox(width: 6),
                  Text(popularItemsModel.rate.toString(),
                      style: AppStyles.styleAskanSemiBold24(context)
                          .copyWith(fontSize: 14)),
                ],
              ),
            ),
            const ReservationsRowSection(),
            const SizedBox(height: 12),
            const DescriptionSection(),
          ],
        ),
      ),
    );
  }
}

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Description', style: AppStyles.styleAskanSemiBold28(context)),
          const SizedBox(height: 12),
          Text(
            'The Capital represents the seat of our government, Test: a place of national The Capital represents the seat of our government, a place of national',
            style: AppStyles.styleRegular20(context).copyWith(
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 48),
          Row(
            children: [
              const Text('\$400',
                  style: TextStyle(
                      color: AppStyles.primaryColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w700)),
              Text(
                '/package',
                style: AppStyles.styleBold16(context).copyWith(
                  color: AppStyles.primaryColor,
                ),
              ),
              const Spacer(),
              CustomButton(
                child:
                    Text('Book Now', style: AppStyles.styleMedium20(context)),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
