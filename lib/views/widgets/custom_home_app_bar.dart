import 'package:flutter/material.dart';
import 'package:voyage_vue/core/utils/styles.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key, this.icon, this.onPressed, this.child});
  final IconData? icon;
  final Function()? onPressed;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: const Icon(
            Icons.menu_sharp,
          ),
          onPressed: () {},
        ),
        Text(
          'Discover',
          style: AppStyles.styleAskanSemiBold24(context),
        ),
        const Stack(
          children: [
            CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage(
                  'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/a84ab47d-4349-4943-ae58-dd3b4826c6ba/d5uxc1h-1ea4bf58-9207-4e1e-a370-6bba45b1d13f.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2E4NGFiNDdkLTQzNDktNDk0My1hZTU4LWRkM2I0ODI2YzZiYVwvZDV1eGMxaC0xZWE0YmY1OC05MjA3LTRlMWUtYTM3MC02YmJhNDViMWQxM2YucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.ttGhrLFDUjQgzpWxkE1xTqsJff-FTIPe94zJlCd3O1s'),
            ),
            Positioned(
              left: 0,
              bottom: 0,
              child: CircleAvatar(
                radius: 3.5,
                backgroundColor: Colors.red,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
